// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'riverpod_integration.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UserProfileCollectionReference
    implements
        UserProfileQuery,
        FirestoreCollectionReference<UserProfile, UserProfileQuerySnapshot> {
  factory UserProfileCollectionReference([FirebaseFirestore? firestore]) =
      _$UserProfileCollectionReference;

  static UserProfile fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return UserProfile.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    UserProfile value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<UserProfile> get reference;

  @override
  UserProfileDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserProfileDocumentReference> add(UserProfile value);
}

class _$UserProfileCollectionReference extends _$UserProfileQuery
    implements UserProfileCollectionReference {
  factory _$UserProfileCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserProfileCollectionReference._(
      firestore
          .collection('user-profiles')
          .withConverter(
            fromFirestore: UserProfileCollectionReference.fromFirestore,
            toFirestore: UserProfileCollectionReference.toFirestore,
          ),
    );
  }

  _$UserProfileCollectionReference._(CollectionReference<UserProfile> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<UserProfile> get reference =>
      super.reference as CollectionReference<UserProfile>;

  @override
  UserProfileDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserProfileDocumentReference(reference.doc(id));
  }

  @override
  Future<UserProfileDocumentReference> add(UserProfile value) {
    return reference
        .add(value)
        .then((ref) => UserProfileDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserProfileCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserProfileDocumentReference
    extends
        FirestoreDocumentReference<UserProfile, UserProfileDocumentSnapshot> {
  factory UserProfileDocumentReference(
    DocumentReference<UserProfile> reference,
  ) = _$UserProfileDocumentReference;

  DocumentReference<UserProfile> get reference;

  /// A reference to the [UserProfileCollectionReference] containing this document.
  UserProfileCollectionReference get parent {
    return _$UserProfileCollectionReference(reference.firestore);
  }

  late final PostCollectionReference posts = _$PostCollectionReference(
    reference,
  );

  @override
  Stream<UserProfileDocumentSnapshot> snapshots();

  @override
  Future<UserProfileDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    UserProfile model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
    FieldValue ageFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    UserProfile model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
    FieldValue ageFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    UserProfile model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
    FieldValue ageFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String id,
    FieldValue idFieldValue,
    String name,
    FieldValue nameFieldValue,
    String email,
    FieldValue emailFieldValue,
    int? age,
    FieldValue ageFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String id,
    FieldValue idFieldValue,
    String name,
    FieldValue nameFieldValue,
    String email,
    FieldValue emailFieldValue,
    int? age,
    FieldValue ageFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String id,
    FieldValue idFieldValue,
    String name,
    FieldValue nameFieldValue,
    String email,
    FieldValue emailFieldValue,
    int? age,
    FieldValue ageFieldValue,
  });
}

class _$UserProfileDocumentReference
    extends FirestoreDocumentReference<UserProfile, UserProfileDocumentSnapshot>
    implements UserProfileDocumentReference {
  _$UserProfileDocumentReference(this.reference);

  @override
  final DocumentReference<UserProfile> reference;

  /// A reference to the [UserProfileCollectionReference] containing this document.
  UserProfileCollectionReference get parent {
    return _$UserProfileCollectionReference(reference.firestore);
  }

  late final PostCollectionReference posts = _$PostCollectionReference(
    reference,
  );

  @override
  Stream<UserProfileDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserProfileDocumentSnapshot._);
  }

  @override
  Future<UserProfileDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserProfileDocumentSnapshot._);
  }

  @override
  Future<UserProfileDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserProfileDocumentSnapshot._);
  }

  Future<void> set(
    UserProfile model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? ageFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$UserProfileFieldMap['id']!: idFieldValue,

      if (nameFieldValue != null)
        _$UserProfileFieldMap['name']!: nameFieldValue,

      if (emailFieldValue != null)
        _$UserProfileFieldMap['email']!: emailFieldValue,

      if (ageFieldValue != null) _$UserProfileFieldMap['age']!: ageFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    UserProfile model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? ageFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$UserProfileFieldMap['id']!: idFieldValue,

      if (nameFieldValue != null)
        _$UserProfileFieldMap['name']!: nameFieldValue,

      if (emailFieldValue != null)
        _$UserProfileFieldMap['email']!: emailFieldValue,

      if (ageFieldValue != null) _$UserProfileFieldMap['age']!: ageFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    transaction.set(castedReference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    UserProfile model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? ageFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$UserProfileFieldMap['id']!: idFieldValue,

      if (nameFieldValue != null)
        _$UserProfileFieldMap['name']!: nameFieldValue,

      if (emailFieldValue != null)
        _$UserProfileFieldMap['email']!: emailFieldValue,

      if (ageFieldValue != null) _$UserProfileFieldMap['age']!: ageFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    batch.set(castedReference, json, options);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? age = _sentinel,
    FieldValue? ageFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      age == _sentinel || ageFieldValue == null,
      "Cannot specify both age and ageFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$UserProfileFieldMap['id']!: _$UserProfilePerFieldToJson.id(
          id as String,
        ),

      if (idFieldValue != null) _$UserProfileFieldMap['id']!: idFieldValue,

      if (name != _sentinel)
        _$UserProfileFieldMap['name']!: _$UserProfilePerFieldToJson.name(
          name as String,
        ),

      if (nameFieldValue != null)
        _$UserProfileFieldMap['name']!: nameFieldValue,

      if (email != _sentinel)
        _$UserProfileFieldMap['email']!: _$UserProfilePerFieldToJson.email(
          email as String,
        ),

      if (emailFieldValue != null)
        _$UserProfileFieldMap['email']!: emailFieldValue,

      if (age != _sentinel)
        _$UserProfileFieldMap['age']!: _$UserProfilePerFieldToJson.age(
          age as int?,
        ),

      if (ageFieldValue != null) _$UserProfileFieldMap['age']!: ageFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? age = _sentinel,
    FieldValue? ageFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      age == _sentinel || ageFieldValue == null,
      "Cannot specify both age and ageFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$UserProfileFieldMap['id']!: _$UserProfilePerFieldToJson.id(
          id as String,
        ),

      if (idFieldValue != null) _$UserProfileFieldMap['id']!: idFieldValue,

      if (name != _sentinel)
        _$UserProfileFieldMap['name']!: _$UserProfilePerFieldToJson.name(
          name as String,
        ),

      if (nameFieldValue != null)
        _$UserProfileFieldMap['name']!: nameFieldValue,

      if (email != _sentinel)
        _$UserProfileFieldMap['email']!: _$UserProfilePerFieldToJson.email(
          email as String,
        ),

      if (emailFieldValue != null)
        _$UserProfileFieldMap['email']!: emailFieldValue,

      if (age != _sentinel)
        _$UserProfileFieldMap['age']!: _$UserProfilePerFieldToJson.age(
          age as int?,
        ),

      if (ageFieldValue != null) _$UserProfileFieldMap['age']!: ageFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? age = _sentinel,
    FieldValue? ageFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      age == _sentinel || ageFieldValue == null,
      "Cannot specify both age and ageFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$UserProfileFieldMap['id']!: _$UserProfilePerFieldToJson.id(
          id as String,
        ),

      if (idFieldValue != null) _$UserProfileFieldMap['id']!: idFieldValue,

      if (name != _sentinel)
        _$UserProfileFieldMap['name']!: _$UserProfilePerFieldToJson.name(
          name as String,
        ),

      if (nameFieldValue != null)
        _$UserProfileFieldMap['name']!: nameFieldValue,

      if (email != _sentinel)
        _$UserProfileFieldMap['email']!: _$UserProfilePerFieldToJson.email(
          email as String,
        ),

      if (emailFieldValue != null)
        _$UserProfileFieldMap['email']!: emailFieldValue,

      if (age != _sentinel)
        _$UserProfileFieldMap['age']!: _$UserProfilePerFieldToJson.age(
          age as int?,
        ),

      if (ageFieldValue != null) _$UserProfileFieldMap['age']!: ageFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserProfileDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserProfileQuery
    implements QueryReference<UserProfile, UserProfileQuerySnapshot> {
  @override
  UserProfileQuery limit(int limit);

  @override
  UserProfileQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UserProfileQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UserProfileQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserProfileQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserProfileQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserProfileQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserProfileQuery whereAge({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UserProfileQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  });

  UserProfileQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  });

  UserProfileQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  });

  UserProfileQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  });

  UserProfileQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  });

  UserProfileQuery orderByAge({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  });
}

class _$UserProfileQuery
    extends QueryReference<UserProfile, UserProfileQuerySnapshot>
    implements UserProfileQuery {
  _$UserProfileQuery(
    this._collection, {
    required Query<UserProfile> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserProfileQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(
      UserProfileQuerySnapshot._fromQuerySnapshot,
    );
  }

  @override
  Future<UserProfileQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UserProfileQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserProfileQuery limit(int limit) {
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProfileQuery limitToLast(int limit) {
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProfileQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProfileQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProfileQuery whereId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserProfileFieldMap['id']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.id(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.id(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserProfilePerFieldToJson.id(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.id(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserProfilePerFieldToJson.id(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.id(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserProfilePerFieldToJson.id(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserProfilePerFieldToJson.id(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProfileQuery whereName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserProfileFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserProfilePerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserProfilePerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserProfilePerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserProfilePerFieldToJson.name(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProfileQuery whereEmail({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserProfileFieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.email(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.email(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserProfilePerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserProfilePerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.email(
                isGreaterThanOrEqualTo as String,
              )
            : null,
        whereIn: whereIn?.map((e) => _$UserProfilePerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$UserProfilePerFieldToJson.email(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProfileQuery whereAge({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserProfileFieldMap['age']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.age(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.age(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$UserProfilePerFieldToJson.age(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.age(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserProfilePerFieldToJson.age(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.age(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn?.map((e) => _$UserProfilePerFieldToJson.age(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserProfilePerFieldToJson.age(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProfileQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      fieldPath,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProfileQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      FieldPath.documentId,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProfileQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserProfileFieldMap['id']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$UserProfilePerFieldToJson.id(startAt as String),
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$UserProfilePerFieldToJson.id(startAfter as String),
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$UserProfilePerFieldToJson.id(endAt as String),
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$UserProfilePerFieldToJson.id(endBefore as String),
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProfileQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserProfileFieldMap['name']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$UserProfilePerFieldToJson.name(startAt as String),
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$UserProfilePerFieldToJson.name(startAfter as String),
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$UserProfilePerFieldToJson.name(endAt as String),
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$UserProfilePerFieldToJson.name(endBefore as String),
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProfileQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserProfileFieldMap['email']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$UserProfilePerFieldToJson.email(startAt as String),
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$UserProfilePerFieldToJson.email(startAfter as String),
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$UserProfilePerFieldToJson.email(endAt as String),
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$UserProfilePerFieldToJson.email(endBefore as String),
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProfileQuery orderByAge({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserProfileFieldMap['age']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$UserProfilePerFieldToJson.age(startAt as int?),
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$UserProfilePerFieldToJson.age(startAfter as int?),
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$UserProfilePerFieldToJson.age(endAt as int?),
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$UserProfilePerFieldToJson.age(endBefore as int?),
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserProfileQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserProfileDocumentSnapshot
    extends FirestoreDocumentSnapshot<UserProfile> {
  UserProfileDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<UserProfile> snapshot;

  @override
  UserProfileDocumentReference get reference {
    return UserProfileDocumentReference(snapshot.reference);
  }

  @override
  final UserProfile? data;
}

class UserProfileQuerySnapshot
    extends
        FirestoreQuerySnapshot<UserProfile, UserProfileQueryDocumentSnapshot> {
  UserProfileQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory UserProfileQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<UserProfile> snapshot,
  ) {
    final docs = snapshot.docs.map(UserProfileQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, UserProfileDocumentSnapshot._);
    }).toList();

    return UserProfileQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<UserProfileDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserProfileDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserProfileDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<UserProfile> snapshot;

  @override
  final List<UserProfileQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserProfileDocumentSnapshot>> docChanges;
}

class UserProfileQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<UserProfile>
    implements UserProfileDocumentSnapshot {
  UserProfileQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<UserProfile> snapshot;

  @override
  final UserProfile data;

  @override
  UserProfileDocumentReference get reference {
    return UserProfileDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class PostCollectionReference
    implements
        PostQuery,
        FirestoreCollectionReference<Post, PostQuerySnapshot> {
  factory PostCollectionReference(DocumentReference<UserProfile> parent) =
      _$PostCollectionReference;

  static Post fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Post.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(Post value, SetOptions? options) {
    return value.toJson();
  }

  @override
  CollectionReference<Post> get reference;

  /// A reference to the containing [UserProfileDocumentReference] if this is a subcollection.
  UserProfileDocumentReference get parent;

  @override
  PostDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<PostDocumentReference> add(Post value);
}

class _$PostCollectionReference extends _$PostQuery
    implements PostCollectionReference {
  factory _$PostCollectionReference(DocumentReference<UserProfile> parent) {
    return _$PostCollectionReference._(
      UserProfileDocumentReference(parent),
      parent
          .collection('posts')
          .withConverter(
            fromFirestore: PostCollectionReference.fromFirestore,
            toFirestore: PostCollectionReference.toFirestore,
          ),
    );
  }

  _$PostCollectionReference._(this.parent, CollectionReference<Post> reference)
    : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserProfileDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Post> get reference =>
      super.reference as CollectionReference<Post>;

  @override
  PostDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return PostDocumentReference(reference.doc(id));
  }

  @override
  Future<PostDocumentReference> add(Post value) {
    return reference.add(value).then((ref) => PostDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$PostCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class PostDocumentReference
    extends FirestoreDocumentReference<Post, PostDocumentSnapshot> {
  factory PostDocumentReference(DocumentReference<Post> reference) =
      _$PostDocumentReference;

  DocumentReference<Post> get reference;

  /// A reference to the [PostCollectionReference] containing this document.
  PostCollectionReference get parent {
    return _$PostCollectionReference(
      reference.parent.parent!.withConverter<UserProfile>(
        fromFirestore: UserProfileCollectionReference.fromFirestore,
        toFirestore: UserProfileCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<PostDocumentSnapshot> snapshots();

  @override
  Future<PostDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Post model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue titleFieldValue,
    FieldValue contentFieldValue,
    FieldValue authorIdFieldValue,
    FieldValue createdAtFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Post model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue titleFieldValue,
    FieldValue contentFieldValue,
    FieldValue authorIdFieldValue,
    FieldValue createdAtFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Post model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue titleFieldValue,
    FieldValue contentFieldValue,
    FieldValue authorIdFieldValue,
    FieldValue createdAtFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String id,
    FieldValue idFieldValue,
    String title,
    FieldValue titleFieldValue,
    String content,
    FieldValue contentFieldValue,
    String authorId,
    FieldValue authorIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String id,
    FieldValue idFieldValue,
    String title,
    FieldValue titleFieldValue,
    String content,
    FieldValue contentFieldValue,
    String authorId,
    FieldValue authorIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String id,
    FieldValue idFieldValue,
    String title,
    FieldValue titleFieldValue,
    String content,
    FieldValue contentFieldValue,
    String authorId,
    FieldValue authorIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
  });
}

class _$PostDocumentReference
    extends FirestoreDocumentReference<Post, PostDocumentSnapshot>
    implements PostDocumentReference {
  _$PostDocumentReference(this.reference);

  @override
  final DocumentReference<Post> reference;

  /// A reference to the [PostCollectionReference] containing this document.
  PostCollectionReference get parent {
    return _$PostCollectionReference(
      reference.parent.parent!.withConverter<UserProfile>(
        fromFirestore: UserProfileCollectionReference.fromFirestore,
        toFirestore: UserProfileCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<PostDocumentSnapshot> snapshots() {
    return reference.snapshots().map(PostDocumentSnapshot._);
  }

  @override
  Future<PostDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(PostDocumentSnapshot._);
  }

  @override
  Future<PostDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(PostDocumentSnapshot._);
  }

  Future<void> set(
    Post model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? titleFieldValue,
    FieldValue? contentFieldValue,
    FieldValue? authorIdFieldValue,
    FieldValue? createdAtFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$PostFieldMap['id']!: idFieldValue,

      if (titleFieldValue != null) _$PostFieldMap['title']!: titleFieldValue,

      if (contentFieldValue != null)
        _$PostFieldMap['content']!: contentFieldValue,

      if (authorIdFieldValue != null)
        _$PostFieldMap['authorId']!: authorIdFieldValue,

      if (createdAtFieldValue != null)
        _$PostFieldMap['createdAt']!: createdAtFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Post model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? titleFieldValue,
    FieldValue? contentFieldValue,
    FieldValue? authorIdFieldValue,
    FieldValue? createdAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$PostFieldMap['id']!: idFieldValue,

      if (titleFieldValue != null) _$PostFieldMap['title']!: titleFieldValue,

      if (contentFieldValue != null)
        _$PostFieldMap['content']!: contentFieldValue,

      if (authorIdFieldValue != null)
        _$PostFieldMap['authorId']!: authorIdFieldValue,

      if (createdAtFieldValue != null)
        _$PostFieldMap['createdAt']!: createdAtFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    transaction.set(castedReference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Post model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? titleFieldValue,
    FieldValue? contentFieldValue,
    FieldValue? authorIdFieldValue,
    FieldValue? createdAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$PostFieldMap['id']!: idFieldValue,

      if (titleFieldValue != null) _$PostFieldMap['title']!: titleFieldValue,

      if (contentFieldValue != null)
        _$PostFieldMap['content']!: contentFieldValue,

      if (authorIdFieldValue != null)
        _$PostFieldMap['authorId']!: authorIdFieldValue,

      if (createdAtFieldValue != null)
        _$PostFieldMap['createdAt']!: createdAtFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    batch.set(castedReference, json, options);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? content = _sentinel,
    FieldValue? contentFieldValue,
    Object? authorId = _sentinel,
    FieldValue? authorIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      content == _sentinel || contentFieldValue == null,
      "Cannot specify both content and contentFieldValue",
    );
    assert(
      authorId == _sentinel || authorIdFieldValue == null,
      "Cannot specify both authorId and authorIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$PostFieldMap['id']!: _$PostPerFieldToJson.id(id as String),

      if (idFieldValue != null) _$PostFieldMap['id']!: idFieldValue,

      if (title != _sentinel)
        _$PostFieldMap['title']!: _$PostPerFieldToJson.title(title as String),

      if (titleFieldValue != null) _$PostFieldMap['title']!: titleFieldValue,

      if (content != _sentinel)
        _$PostFieldMap['content']!: _$PostPerFieldToJson.content(
          content as String,
        ),

      if (contentFieldValue != null)
        _$PostFieldMap['content']!: contentFieldValue,

      if (authorId != _sentinel)
        _$PostFieldMap['authorId']!: _$PostPerFieldToJson.authorId(
          authorId as String,
        ),

      if (authorIdFieldValue != null)
        _$PostFieldMap['authorId']!: authorIdFieldValue,

      if (createdAt != _sentinel)
        _$PostFieldMap['createdAt']!: _$PostPerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$PostFieldMap['createdAt']!: createdAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? content = _sentinel,
    FieldValue? contentFieldValue,
    Object? authorId = _sentinel,
    FieldValue? authorIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      content == _sentinel || contentFieldValue == null,
      "Cannot specify both content and contentFieldValue",
    );
    assert(
      authorId == _sentinel || authorIdFieldValue == null,
      "Cannot specify both authorId and authorIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$PostFieldMap['id']!: _$PostPerFieldToJson.id(id as String),

      if (idFieldValue != null) _$PostFieldMap['id']!: idFieldValue,

      if (title != _sentinel)
        _$PostFieldMap['title']!: _$PostPerFieldToJson.title(title as String),

      if (titleFieldValue != null) _$PostFieldMap['title']!: titleFieldValue,

      if (content != _sentinel)
        _$PostFieldMap['content']!: _$PostPerFieldToJson.content(
          content as String,
        ),

      if (contentFieldValue != null)
        _$PostFieldMap['content']!: contentFieldValue,

      if (authorId != _sentinel)
        _$PostFieldMap['authorId']!: _$PostPerFieldToJson.authorId(
          authorId as String,
        ),

      if (authorIdFieldValue != null)
        _$PostFieldMap['authorId']!: authorIdFieldValue,

      if (createdAt != _sentinel)
        _$PostFieldMap['createdAt']!: _$PostPerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$PostFieldMap['createdAt']!: createdAtFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? content = _sentinel,
    FieldValue? contentFieldValue,
    Object? authorId = _sentinel,
    FieldValue? authorIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      content == _sentinel || contentFieldValue == null,
      "Cannot specify both content and contentFieldValue",
    );
    assert(
      authorId == _sentinel || authorIdFieldValue == null,
      "Cannot specify both authorId and authorIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$PostFieldMap['id']!: _$PostPerFieldToJson.id(id as String),

      if (idFieldValue != null) _$PostFieldMap['id']!: idFieldValue,

      if (title != _sentinel)
        _$PostFieldMap['title']!: _$PostPerFieldToJson.title(title as String),

      if (titleFieldValue != null) _$PostFieldMap['title']!: titleFieldValue,

      if (content != _sentinel)
        _$PostFieldMap['content']!: _$PostPerFieldToJson.content(
          content as String,
        ),

      if (contentFieldValue != null)
        _$PostFieldMap['content']!: contentFieldValue,

      if (authorId != _sentinel)
        _$PostFieldMap['authorId']!: _$PostPerFieldToJson.authorId(
          authorId as String,
        ),

      if (authorIdFieldValue != null)
        _$PostFieldMap['authorId']!: authorIdFieldValue,

      if (createdAt != _sentinel)
        _$PostFieldMap['createdAt']!: _$PostPerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$PostFieldMap['createdAt']!: createdAtFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is PostDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class PostQuery implements QueryReference<Post, PostQuerySnapshot> {
  @override
  PostQuery limit(int limit);

  @override
  PostQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  PostQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  PostQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  PostQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  PostQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  PostQuery whereContent({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  PostQuery whereAuthorId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  PostQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  PostQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  });

  PostQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  });

  PostQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  });

  PostQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  });

  PostQuery orderByContent({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  });

  PostQuery orderByAuthorId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  });

  PostQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  });
}

class _$PostQuery extends QueryReference<Post, PostQuerySnapshot>
    implements PostQuery {
  _$PostQuery(
    this._collection, {
    required Query<Post> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<PostQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(PostQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<PostQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(PostQuerySnapshot._fromQuerySnapshot);
  }

  @override
  PostQuery limit(int limit) {
    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PostQuery limitToLast(int limit) {
    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PostQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PostQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PostQuery whereId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PostFieldMap['id']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$PostPerFieldToJson.id(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$PostPerFieldToJson.id(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$PostPerFieldToJson.id(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$PostPerFieldToJson.id(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$PostPerFieldToJson.id(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$PostPerFieldToJson.id(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$PostPerFieldToJson.id(e)),
        whereNotIn: whereNotIn?.map((e) => _$PostPerFieldToJson.id(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PostQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PostFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$PostPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$PostPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$PostPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$PostPerFieldToJson.title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$PostPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$PostPerFieldToJson.title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$PostPerFieldToJson.title(e)),
        whereNotIn: whereNotIn?.map((e) => _$PostPerFieldToJson.title(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PostQuery whereContent({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PostFieldMap['content']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$PostPerFieldToJson.content(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$PostPerFieldToJson.content(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$PostPerFieldToJson.content(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$PostPerFieldToJson.content(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$PostPerFieldToJson.content(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$PostPerFieldToJson.content(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$PostPerFieldToJson.content(e)),
        whereNotIn: whereNotIn?.map((e) => _$PostPerFieldToJson.content(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PostQuery whereAuthorId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PostFieldMap['authorId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$PostPerFieldToJson.authorId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$PostPerFieldToJson.authorId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$PostPerFieldToJson.authorId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$PostPerFieldToJson.authorId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$PostPerFieldToJson.authorId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$PostPerFieldToJson.authorId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$PostPerFieldToJson.authorId(e)),
        whereNotIn: whereNotIn?.map((e) => _$PostPerFieldToJson.authorId(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PostQuery whereCreatedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PostFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$PostPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$PostPerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$PostPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$PostPerFieldToJson.createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$PostPerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$PostPerFieldToJson.createdAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$PostPerFieldToJson.createdAt(e)),
        whereNotIn: whereNotIn?.map((e) => _$PostPerFieldToJson.createdAt(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PostQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      fieldPath,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PostQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      FieldPath.documentId,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PostQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$PostFieldMap['id']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$PostPerFieldToJson.id(startAt as String),
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$PostPerFieldToJson.id(startAfter as String),
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, _$PostPerFieldToJson.id(endAt as String)],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$PostPerFieldToJson.id(endBefore as String),
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PostQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$PostFieldMap['title']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$PostPerFieldToJson.title(startAt as String),
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$PostPerFieldToJson.title(startAfter as String),
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$PostPerFieldToJson.title(endAt as String),
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$PostPerFieldToJson.title(endBefore as String),
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PostQuery orderByContent({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$PostFieldMap['content']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$PostPerFieldToJson.content(startAt as String),
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$PostPerFieldToJson.content(startAfter as String),
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$PostPerFieldToJson.content(endAt as String),
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$PostPerFieldToJson.content(endBefore as String),
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PostQuery orderByAuthorId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$PostFieldMap['authorId']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$PostPerFieldToJson.authorId(startAt as String),
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$PostPerFieldToJson.authorId(startAfter as String),
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$PostPerFieldToJson.authorId(endAt as String),
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$PostPerFieldToJson.authorId(endBefore as String),
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PostQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PostDocumentSnapshot? startAtDocument,
    PostDocumentSnapshot? endAtDocument,
    PostDocumentSnapshot? endBeforeDocument,
    PostDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$PostFieldMap['createdAt']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$PostPerFieldToJson.createdAt(startAt as DateTime),
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$PostPerFieldToJson.createdAt(startAfter as DateTime),
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$PostPerFieldToJson.createdAt(endAt as DateTime),
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$PostPerFieldToJson.createdAt(endBefore as DateTime),
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PostQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$PostQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class PostDocumentSnapshot extends FirestoreDocumentSnapshot<Post> {
  PostDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Post> snapshot;

  @override
  PostDocumentReference get reference {
    return PostDocumentReference(snapshot.reference);
  }

  @override
  final Post? data;
}

class PostQuerySnapshot
    extends FirestoreQuerySnapshot<Post, PostQueryDocumentSnapshot> {
  PostQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory PostQuerySnapshot._fromQuerySnapshot(QuerySnapshot<Post> snapshot) {
    final docs = snapshot.docs.map(PostQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, PostDocumentSnapshot._);
    }).toList();

    return PostQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<PostDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    PostDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<PostDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Post> snapshot;

  @override
  final List<PostQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<PostDocumentSnapshot>> docChanges;
}

class PostQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Post>
    implements PostDocumentSnapshot {
  PostQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Post> snapshot;

  @override
  final Post data;

  @override
  PostDocumentReference get reference {
    return PostDocumentReference(snapshot.reference);
  }
}
