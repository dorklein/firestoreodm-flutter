// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'integration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmptyModel _$EmptyModelFromJson(Map<String, dynamic> json) => EmptyModel();

const _$EmptyModelFieldMap = <String, String>{};

// ignore: unused_element
abstract class _$EmptyModelPerFieldToJson {}

Map<String, dynamic> _$EmptyModelToJson(EmptyModel instance) =>
    <String, dynamic>{};

AdvancedJson _$AdvancedJsonFromJson(Map<String, dynamic> json) => AdvancedJson(
  firstName: json['first_name'] as String?,
  lastName: json['LAST_NAME'] as String?,
);

const _$AdvancedJsonFieldMap = <String, String>{
  'firstName': 'first_name',
  'lastName': 'LAST_NAME',
};

// ignore: unused_element
abstract class _$AdvancedJsonPerFieldToJson {
  // ignore: unused_element
  static Object? firstName(String? instance) => instance;
  // ignore: unused_element
  static Object? lastName(String? instance) => instance;
}

Map<String, dynamic> _$AdvancedJsonToJson(AdvancedJson instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'LAST_NAME': instance.lastName,
    };

_PrivateAdvancedJson _$PrivateAdvancedJsonFromJson(Map<String, dynamic> json) =>
    _PrivateAdvancedJson(
      firstName: json['first_name'] as String?,
      lastName: json['LAST_NAME'] as String?,
    );

const _$PrivateAdvancedJsonFieldMap = <String, String>{
  'firstName': 'first_name',
  'lastName': 'LAST_NAME',
};

// ignore: unused_element
abstract class _$PrivateAdvancedJsonPerFieldToJson {
  // ignore: unused_element
  static Object? firstName(String? instance) => instance;
  // ignore: unused_element
  static Object? lastName(String? instance) => instance;
}

Map<String, dynamic> _$PrivateAdvancedJsonToJson(
  _PrivateAdvancedJson instance,
) => <String, dynamic>{
  'first_name': instance.firstName,
  'LAST_NAME': instance.lastName,
};
