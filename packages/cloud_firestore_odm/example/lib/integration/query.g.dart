// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DurationQuery _$DurationQueryFromJson(Map<String, dynamic> json) =>
    DurationQuery(Duration(microseconds: (json['duration'] as num).toInt()));

const _$DurationQueryFieldMap = <String, String>{'duration': 'duration'};

// ignore: unused_element
abstract class _$DurationQueryPerFieldToJson {
  // ignore: unused_element
  static Object? duration(Duration instance) => instance.inMicroseconds;
}

Map<String, dynamic> _$DurationQueryToJson(DurationQuery instance) =>
    <String, dynamic>{'duration': instance.duration.inMicroseconds};

DateTimeQuery _$DateTimeQueryFromJson(Map<String, dynamic> json) =>
    DateTimeQuery(
      const FirestoreDateTimeConverter().fromJson(json['time'] as Timestamp),
    );

const _$DateTimeQueryFieldMap = <String, String>{'time': 'time'};

// ignore: unused_element
abstract class _$DateTimeQueryPerFieldToJson {
  // ignore: unused_element
  static Object? time(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$DateTimeQueryToJson(DateTimeQuery instance) =>
    <String, dynamic>{
      'time': const FirestoreDateTimeConverter().toJson(instance.time),
    };

TimestampQuery _$TimestampQueryFromJson(Map<String, dynamic> json) =>
    TimestampQuery(
      const FirestoreTimestampConverter().fromJson(json['time'] as Timestamp),
    );

const _$TimestampQueryFieldMap = <String, String>{'time': 'time'};

// ignore: unused_element
abstract class _$TimestampQueryPerFieldToJson {
  // ignore: unused_element
  static Object? time(Timestamp instance) =>
      const FirestoreTimestampConverter().toJson(instance);
}

Map<String, dynamic> _$TimestampQueryToJson(TimestampQuery instance) =>
    <String, dynamic>{
      'time': const FirestoreTimestampConverter().toJson(instance.time),
    };

GeoPointQuery _$GeoPointQueryFromJson(Map<String, dynamic> json) =>
    GeoPointQuery(
      const FirestoreGeoPointConverter().fromJson(json['point'] as GeoPoint),
    );

const _$GeoPointQueryFieldMap = <String, String>{'point': 'point'};

// ignore: unused_element
abstract class _$GeoPointQueryPerFieldToJson {
  // ignore: unused_element
  static Object? point(GeoPoint instance) =>
      const FirestoreGeoPointConverter().toJson(instance);
}

Map<String, dynamic> _$GeoPointQueryToJson(GeoPointQuery instance) =>
    <String, dynamic>{
      'point': const FirestoreGeoPointConverter().toJson(instance.point),
    };

DocumentReferenceQuery _$DocumentReferenceQueryFromJson(
  Map<String, dynamic> json,
) => DocumentReferenceQuery(
  const FirestoreDocumentReferenceConverter().fromJson(
    json['ref'] as DocumentReference<Map<String, dynamic>>,
  ),
);

const _$DocumentReferenceQueryFieldMap = <String, String>{'ref': 'ref'};

// ignore: unused_element
abstract class _$DocumentReferenceQueryPerFieldToJson {
  // ignore: unused_element
  static Object? ref(DocumentReference<Map<String, dynamic>> instance) =>
      const FirestoreDocumentReferenceConverter().toJson(instance);
}

Map<String, dynamic> _$DocumentReferenceQueryToJson(
  DocumentReferenceQuery instance,
) => <String, dynamic>{
  'ref': const FirestoreDocumentReferenceConverter().toJson(instance.ref),
};
