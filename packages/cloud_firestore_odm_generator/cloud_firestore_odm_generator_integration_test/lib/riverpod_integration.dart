// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod_integration.firebase.dart';
part 'riverpod_integration.freezed.dart';
part 'riverpod_integration.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

/// A model that will be used with both Cloud Firestore ODM and Riverpod
@firestoreSerializable
class UserProfile {
  const UserProfile({required this.id, required this.name, required this.email, this.age});

  factory UserProfile.fromJson(Map<String, Object?> json) => _$UserProfileFromJson(json);

  final String id;
  final String name;
  final String email;
  final int? age;

  Map<String, Object?> toJson() => _$UserProfileToJson(this);
}

/// Another Firestore sub-model that will coexist with Riverpod providers
@firestoreSerializable
class Post {
  const Post({
    required this.id,
    required this.title,
    required this.content,
    required this.authorId,
    required this.createdAt,
  });

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);

  final String id;
  final String title;
  final String content;
  final String authorId;
  final DateTime createdAt;

  Map<String, Object?> toJson() => _$PostToJson(this);
}

/// A simple data model for testing Riverpod providers
@JsonSerializable()
class AppSettings {
  const AppSettings({required this.theme, required this.notifications});

  factory AppSettings.fromJson(Map<String, Object?> json) => _$AppSettingsFromJson(json);

  final String theme;
  final bool notifications;

  Map<String, Object?> toJson() => _$AppSettingsToJson(this);

  AppSettings copyWith({String? theme, bool? notifications}) {
    return AppSettings(
      theme: theme ?? this.theme,
      notifications: notifications ?? this.notifications,
    );
  }
}

/// Collection reference for Firestore ODM
@Collection<UserProfile>('user-profiles')
@Collection<Post>('user-profiles/*/posts')
final userProfileRef = UserProfileCollectionReference();

@freezed
abstract class Person with _$Person {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Person({
    required String firstName,
    @JsonKey(name: 'LAST_NAME') required String lastName,
    @JsonKey(includeFromJson: false, includeToJson: false) int? ignored,
  }) = _Person;

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);
}

/// Riverpod provider for user profiles collection
@riverpod
_$Person userProfilesCollection(Ref ref) {
  return Person(firstName: 'John', lastName: 'Doe', ignored: 1);
}

void main() {
  print('userProfileRef: ${_$Person} - ${userProfilesCollectionProvider}');
}

/// Riverpod provider for a specific user profile
@riverpod
Stream<UserProfile?> userProfile(Ref ref, String userId) {
  // final collection = ref.watch(userProfilesCollectionProvider);
  return userProfileRef.doc(userId).snapshots().map((snapshot) {
    return snapshot.data;
  });
}

/// Riverpod provider for all user profiles
@riverpod
Stream<List<UserProfile>> allUserProfiles(Ref ref) {
  // final collection = ref.watch(userProfilesCollectionProvider);
  return userProfileRef.reference.snapshots().map((snapshot) {
    return snapshot.docs.map((doc) => doc.data()).toList();
  });
}

/// Riverpod provider for posts by author
@riverpod
Stream<List<Post>> postsByAuthor(Ref ref, String authorId) {
  final collection = userProfileRef.doc(authorId).posts;
  return collection
      .whereAuthorId(isEqualTo: authorId)
      .snapshots()
      .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());
}

/// Riverpod provider for recent posts
@riverpod
Stream<List<Post>> recentPosts(Ref ref, String authorId) {
  final collection = userProfileRef.doc(authorId).posts;
  return collection
      .orderByCreatedAt(descending: true)
      .limit(10)
      .snapshots()
      .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());
}

/// Riverpod provider for app settings
@riverpod
class AppSettingsNotifier extends _$AppSettingsNotifier {
  @override
  AppSettings build() {
    return const AppSettings(theme: 'light', notifications: true);
  }

  void updateTheme(String theme) {
    state = state.copyWith(theme: theme);
  }

  void toggleNotifications() {
    state = state.copyWith(notifications: !state.notifications);
  }
}
