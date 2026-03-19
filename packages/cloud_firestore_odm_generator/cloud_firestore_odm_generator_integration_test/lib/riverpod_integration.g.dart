// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod_integration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  age: (json['age'] as num?)?.toInt(),
);

const _$UserProfileFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'email': 'email',
  'age': 'age',
};

// ignore: unused_element
abstract class _$UserProfilePerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? age(int? instance) => instance;
}

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'age': instance.age,
    };

Post _$PostFromJson(Map<String, dynamic> json) => Post(
  id: json['id'] as String,
  title: json['title'] as String,
  content: json['content'] as String,
  authorId: json['authorId'] as String,
  createdAt: const FirestoreDateTimeConverter().fromJson(
    json['createdAt'] as Timestamp,
  ),
);

const _$PostFieldMap = <String, String>{
  'id': 'id',
  'title': 'title',
  'content': 'content',
  'authorId': 'authorId',
  'createdAt': 'createdAt',
};

// ignore: unused_element
abstract class _$PostPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? content(String instance) => instance;
  // ignore: unused_element
  static Object? authorId(String instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'content': instance.content,
  'authorId': instance.authorId,
  'createdAt': const FirestoreDateTimeConverter().toJson(instance.createdAt),
};

AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) => AppSettings(
  theme: json['theme'] as String,
  notifications: json['notifications'] as bool,
);

const _$AppSettingsFieldMap = <String, String>{
  'theme': 'theme',
  'notifications': 'notifications',
};

// ignore: unused_element
abstract class _$AppSettingsPerFieldToJson {
  // ignore: unused_element
  static Object? theme(String instance) => instance;
  // ignore: unused_element
  static Object? notifications(bool instance) => instance;
}

Map<String, dynamic> _$AppSettingsToJson(AppSettings instance) =>
    <String, dynamic>{
      'theme': instance.theme,
      'notifications': instance.notifications,
    };

_Person _$PersonFromJson(Map<String, dynamic> json) => _Person(
  firstName: json['first_name'] as String,
  lastName: json['LAST_NAME'] as String,
);

const _$PersonFieldMap = <String, String>{
  'firstName': 'first_name',
  'lastName': 'LAST_NAME',
};

// ignore: unused_element
abstract class _$PersonPerFieldToJson {
  // ignore: unused_element
  static Object? firstName(String instance) => instance;
  // ignore: unused_element
  static Object? lastName(String instance) => instance;
}

Map<String, dynamic> _$PersonToJson(_Person instance) => <String, dynamic>{
  'first_name': instance.firstName,
  'LAST_NAME': instance.lastName,
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Riverpod provider for user profiles collection

@ProviderFor(userProfilesCollection)
final userProfilesCollectionProvider = UserProfilesCollectionProvider._();

/// Riverpod provider for user profiles collection

final class UserProfilesCollectionProvider
    extends $FunctionalProvider<_$Person, _$Person, _$Person>
    with $Provider<_$Person> {
  /// Riverpod provider for user profiles collection
  UserProfilesCollectionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userProfilesCollectionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userProfilesCollectionHash();

  @$internal
  @override
  $ProviderElement<_$Person> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  _$Person create(Ref ref) {
    return userProfilesCollection(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(_$Person value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<_$Person>(value),
    );
  }
}

String _$userProfilesCollectionHash() =>
    r'30dd7391a6180e68c5e632f96aa3856ca161c744';

/// Riverpod provider for a specific user profile

@ProviderFor(userProfile)
final userProfileProvider = UserProfileFamily._();

/// Riverpod provider for a specific user profile

final class UserProfileProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserProfile?>,
          UserProfile?,
          Stream<UserProfile?>
        >
    with $FutureModifier<UserProfile?>, $StreamProvider<UserProfile?> {
  /// Riverpod provider for a specific user profile
  UserProfileProvider._({
    required UserProfileFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'userProfileProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userProfileHash();

  @override
  String toString() {
    return r'userProfileProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<UserProfile?> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<UserProfile?> create(Ref ref) {
    final argument = this.argument as String;
    return userProfile(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UserProfileProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userProfileHash() => r'cb26738228ef2c452d5c2b231f6898251f9af62b';

/// Riverpod provider for a specific user profile

final class UserProfileFamily extends $Family
    with $FunctionalFamilyOverride<Stream<UserProfile?>, String> {
  UserProfileFamily._()
    : super(
        retry: null,
        name: r'userProfileProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Riverpod provider for a specific user profile

  UserProfileProvider call(String userId) =>
      UserProfileProvider._(argument: userId, from: this);

  @override
  String toString() => r'userProfileProvider';
}

/// Riverpod provider for all user profiles

@ProviderFor(allUserProfiles)
final allUserProfilesProvider = AllUserProfilesProvider._();

/// Riverpod provider for all user profiles

final class AllUserProfilesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<UserProfile>>,
          List<UserProfile>,
          Stream<List<UserProfile>>
        >
    with
        $FutureModifier<List<UserProfile>>,
        $StreamProvider<List<UserProfile>> {
  /// Riverpod provider for all user profiles
  AllUserProfilesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'allUserProfilesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$allUserProfilesHash();

  @$internal
  @override
  $StreamProviderElement<List<UserProfile>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<UserProfile>> create(Ref ref) {
    return allUserProfiles(ref);
  }
}

String _$allUserProfilesHash() => r'd835ea11db48e7bac7a438884a6d55ad47844ac0';

/// Riverpod provider for posts by author

@ProviderFor(postsByAuthor)
final postsByAuthorProvider = PostsByAuthorFamily._();

/// Riverpod provider for posts by author

final class PostsByAuthorProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Post>>,
          List<Post>,
          Stream<List<Post>>
        >
    with $FutureModifier<List<Post>>, $StreamProvider<List<Post>> {
  /// Riverpod provider for posts by author
  PostsByAuthorProvider._({
    required PostsByAuthorFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'postsByAuthorProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$postsByAuthorHash();

  @override
  String toString() {
    return r'postsByAuthorProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<Post>> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Post>> create(Ref ref) {
    final argument = this.argument as String;
    return postsByAuthor(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PostsByAuthorProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$postsByAuthorHash() => r'd5b51c409a22865278b51231c0ccf9a37747a71e';

/// Riverpod provider for posts by author

final class PostsByAuthorFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<Post>>, String> {
  PostsByAuthorFamily._()
    : super(
        retry: null,
        name: r'postsByAuthorProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Riverpod provider for posts by author

  PostsByAuthorProvider call(String authorId) =>
      PostsByAuthorProvider._(argument: authorId, from: this);

  @override
  String toString() => r'postsByAuthorProvider';
}

/// Riverpod provider for recent posts

@ProviderFor(recentPosts)
final recentPostsProvider = RecentPostsFamily._();

/// Riverpod provider for recent posts

final class RecentPostsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Post>>,
          List<Post>,
          Stream<List<Post>>
        >
    with $FutureModifier<List<Post>>, $StreamProvider<List<Post>> {
  /// Riverpod provider for recent posts
  RecentPostsProvider._({
    required RecentPostsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'recentPostsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$recentPostsHash();

  @override
  String toString() {
    return r'recentPostsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<Post>> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Post>> create(Ref ref) {
    final argument = this.argument as String;
    return recentPosts(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RecentPostsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$recentPostsHash() => r'84d6adf0820593b072f217342208cf7310809d81';

/// Riverpod provider for recent posts

final class RecentPostsFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<Post>>, String> {
  RecentPostsFamily._()
    : super(
        retry: null,
        name: r'recentPostsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Riverpod provider for recent posts

  RecentPostsProvider call(String authorId) =>
      RecentPostsProvider._(argument: authorId, from: this);

  @override
  String toString() => r'recentPostsProvider';
}

/// Riverpod provider for app settings

@ProviderFor(AppSettingsNotifier)
final appSettingsProvider = AppSettingsNotifierProvider._();

/// Riverpod provider for app settings
final class AppSettingsNotifierProvider
    extends $NotifierProvider<AppSettingsNotifier, AppSettings> {
  /// Riverpod provider for app settings
  AppSettingsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appSettingsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appSettingsNotifierHash();

  @$internal
  @override
  AppSettingsNotifier create() => AppSettingsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppSettings value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppSettings>(value),
    );
  }
}

String _$appSettingsNotifierHash() =>
    r'4b4f2b1eff126b10d15bd9e1c32e2432c3a6afaa';

/// Riverpod provider for app settings

abstract class _$AppSettingsNotifier extends $Notifier<AppSettings> {
  AppSettings build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AppSettings, AppSettings>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppSettings, AppSettings>,
              AppSettings,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
