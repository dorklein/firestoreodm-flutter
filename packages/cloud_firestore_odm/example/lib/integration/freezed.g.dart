// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

PublicRedirected2 _$PublicRedirected2FromJson(Map<String, dynamic> json) =>
    PublicRedirected2(value: json['value'] as String);

const _$PublicRedirected2FieldMap = <String, String>{'value': 'value'};

// ignore: unused_element
abstract class _$PublicRedirected2PerFieldToJson {
  // ignore: unused_element
  static Object? value(String instance) => instance;
}

Map<String, dynamic> _$PublicRedirected2ToJson(PublicRedirected2 instance) =>
    <String, dynamic>{'value': instance.value};
