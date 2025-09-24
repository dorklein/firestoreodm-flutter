// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm_generator_integration_test/riverpod_integration.dart';
import 'package:flutter_test/flutter_test.dart';

import 'setup_firestore_mock.dart';

void main() {
  setUpAll(setupFirestoreMocks);

  group('Riverpod Integration Tests', () {
    test('UserProfile model can be created and serialized', () {
      const userProfile = UserProfile(
        id: 'user1',
        name: 'John Doe',
        email: 'john@example.com',
        age: 30,
      );

      expect(userProfile.id, 'user1');
      expect(userProfile.name, 'John Doe');
      expect(userProfile.email, 'john@example.com');
      expect(userProfile.age, 30);

      // Test JSON serialization
      final json = userProfile.toJson();
      expect(json['id'], 'user1');
      expect(json['name'], 'John Doe');
      expect(json['email'], 'john@example.com');
      expect(json['age'], 30);

      // Test JSON deserialization
      final fromJson = UserProfile.fromJson(json);
      expect(fromJson.id, userProfile.id);
      expect(fromJson.name, userProfile.name);
      expect(fromJson.email, userProfile.email);
      expect(fromJson.age, userProfile.age);
    });

    test('AppSettings model can be created and serialized', () {
      const settings = AppSettings(theme: 'dark', notifications: false);

      expect(settings.theme, 'dark');
      expect(settings.notifications, false);

      // Test JSON serialization
      final json = settings.toJson();
      expect(json['theme'], 'dark');
      expect(json['notifications'], false);

      // Test JSON deserialization
      final fromJson = AppSettings.fromJson(json);
      expect(fromJson.theme, settings.theme);
      expect(fromJson.notifications, settings.notifications);
    });

    test('AppSettings copyWith works correctly', () {
      const originalSettings = AppSettings(theme: 'light', notifications: true);

      final updatedTheme = originalSettings.copyWith(theme: 'dark');
      expect(updatedTheme.theme, 'dark');
      expect(updatedTheme.notifications, true);

      final updatedNotifications = originalSettings.copyWith(notifications: false);
      expect(updatedNotifications.theme, 'light');
      expect(updatedNotifications.notifications, false);

      final updatedBoth = originalSettings.copyWith(theme: 'dark', notifications: false);
      expect(updatedBoth.theme, 'dark');
      expect(updatedBoth.notifications, false);
    });

    test('Post model can be created and serialized', () {
      final now = DateTime.now();
      final post = Post(
        id: 'post1',
        title: 'Test Post',
        content: 'This is a test post content',
        authorId: 'user1',
        createdAt: now,
      );

      expect(post.id, 'post1');
      expect(post.title, 'Test Post');
      expect(post.content, 'This is a test post content');
      expect(post.authorId, 'user1');
      expect(post.createdAt, now);

      // Test JSON serialization
      final json = post.toJson();
      expect(json['id'], 'post1');
      expect(json['title'], 'Test Post');
      expect(json['content'], 'This is a test post content');
      expect(json['authorId'], 'user1');
      expect(json['createdAt'], Timestamp.fromDate(now));

      // Test JSON deserialization
      final fromJson = Post.fromJson(json);
      expect(fromJson.id, post.id);
      expect(fromJson.title, post.title);
      expect(fromJson.content, post.content);
      expect(fromJson.authorId, post.authorId);
      expect(fromJson.createdAt, post.createdAt);
    });

    test('Firestore collection references are accessible', () {
      // Test that both Firestore ODM collection references are accessible
      expect(userProfileRef, isNotNull);
      expect(userProfileRef.path, 'user-profiles');

      expect(userProfileRef.doc('1').posts, isNotNull);
      expect(userProfileRef.doc('1').posts.path, 'user-profiles/1/posts');
    });

    test('Riverpod providers are properly generated', () {
      // Test that Riverpod providers are accessible
      // Note: We can't test the actual provider behavior without a ProviderContainer,
      // but we can verify the providers are generated correctly by checking they exist
      expect(userProfilesCollectionProvider, isNotNull);
      expect(userProfileProvider, isNotNull);
      expect(allUserProfilesProvider, isNotNull);
      expect(appSettingsProvider, isNotNull);
      expect(postsByAuthorProvider, isNotNull);
      expect(recentPostsProvider, isNotNull);
    });
  });

  group('Build Runner Integration', () {
    test('verifies that both cloud_firestore_odm and riverpod code generation coexist', () {
      // This test ensures that the build runner can handle both generators
      // without conflicts. The fact that we can import and use both generated
      // classes and providers in the same file proves this works.

      // Test Firestore ODM generated code
      expect(userProfileRef.doc('test'), isNotNull);
      expect(userProfileRef.doc('test').posts.doc('test'), isNotNull);

      // Test that we can create instances of both types
      const userProfile = UserProfile(id: '1', name: 'Test', email: 'test@test.com');
      final post = Post(
        id: '1',
        title: 'Test',
        content: 'Content',
        authorId: '1',
        createdAt: DateTime.now(),
      );

      expect(userProfile, isA<UserProfile>());
      expect(post, isA<Post>());
    });
  });
}
