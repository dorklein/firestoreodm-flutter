// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'enums.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Enums _$EnumsFromJson(Map<String, dynamic> json) => Enums(
  id: json['id'] as String,
  enumValue:
      $enumDecodeNullable(_$TestEnumEnumMap, json['enumValue']) ?? TestEnum.one,
  nullableEnumValue: $enumDecodeNullable(
    _$TestEnumEnumMap,
    json['nullableEnumValue'],
  ),
  enumList:
      (json['enumList'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TestEnumEnumMap, e))
          .toList() ??
      const [],
  nullableEnumList: (json['nullableEnumList'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$TestEnumEnumMap, e))
      .toList(),
);

const _$EnumsFieldMap = <String, String>{
  'id': 'id',
  'enumValue': 'enumValue',
  'nullableEnumValue': 'nullableEnumValue',
  'enumList': 'enumList',
  'nullableEnumList': 'nullableEnumList',
};

// ignore: unused_element
abstract class _$EnumsPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? enumValue(TestEnum instance) => _$TestEnumEnumMap[instance]!;
  // ignore: unused_element
  static Object? nullableEnumValue(TestEnum? instance) =>
      _$TestEnumEnumMap[instance];
  // ignore: unused_element
  static Object? enumList(List<TestEnum> instance) =>
      instance.map((e) => _$TestEnumEnumMap[e]!).toList();
  // ignore: unused_element
  static Object? nullableEnumList(List<TestEnum>? instance) =>
      instance?.map((e) => _$TestEnumEnumMap[e]!).toList();
}

Map<String, dynamic> _$EnumsToJson(Enums instance) => <String, dynamic>{
  'id': instance.id,
  'enumValue': _$TestEnumEnumMap[instance.enumValue]!,
  'nullableEnumValue': _$TestEnumEnumMap[instance.nullableEnumValue],
  'enumList': instance.enumList.map((e) => _$TestEnumEnumMap[e]!).toList(),
  'nullableEnumList': instance.nullableEnumList
      ?.map((e) => _$TestEnumEnumMap[e]!)
      .toList(),
};

const _$TestEnumEnumMap = {
  TestEnum.one: 'one',
  TestEnum.two: 'two',
  TestEnum.three: 'three',
};
