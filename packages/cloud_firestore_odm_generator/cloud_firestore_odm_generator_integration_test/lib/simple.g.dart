// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IgnoredGetter _$IgnoredGetterFromJson(Map<String, dynamic> json) =>
    IgnoredGetter((json['value'] as num).toInt());

const _$IgnoredGetterFieldMap = <String, String>{
  'value': 'value',
  'count3': 'count3',
};

// ignore: unused_element
abstract class _$IgnoredGetterPerFieldToJson {
  // ignore: unused_element
  static Object? value(int instance) => instance;
  // ignore: unused_element
  static Object? count3(int instance) => instance;
}

Map<String, dynamic> _$IgnoredGetterToJson(IgnoredGetter instance) =>
    <String, dynamic>{'value': instance.value, 'count3': instance.count3};

Model _$ModelFromJson(Map<String, dynamic> json) =>
    Model(json['value'] as String);

const _$ModelFieldMap = <String, String>{'value': 'value'};

// ignore: unused_element
abstract class _$ModelPerFieldToJson {
  // ignore: unused_element
  static Object? value(String instance) => instance;
}

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
  'value': instance.value,
};

Nested _$NestedFromJson(Map<String, dynamic> json) => Nested(
  value: json['value'] == null
      ? null
      : Nested.fromJson(json['value'] as Map<String, dynamic>),
  simple: (json['simple'] as num?)?.toInt(),
  valueList: (json['valueList'] as List<dynamic>?)
      ?.map((e) => Nested.fromJson(e as Map<String, dynamic>))
      .toList(),
  boolList: (json['boolList'] as List<dynamic>?)
      ?.map((e) => e as bool)
      .toList(),
  stringList: (json['stringList'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  numList: (json['numList'] as List<dynamic>?)?.map((e) => e as num).toList(),
  objectList: json['objectList'] as List<dynamic>?,
  dynamicList: json['dynamicList'] as List<dynamic>?,
  boolSet: (json['boolSet'] as List<dynamic>?)?.map((e) => e as bool).toSet(),
  enumValue: $enumDecode(_$TestEnumEnumMap, json['enumValue']),
  nullableEnumValue: $enumDecodeNullable(
    _$TestEnumEnumMap,
    json['nullableEnumValue'],
  ),
  enumList: (json['enumList'] as List<dynamic>)
      .map((e) => $enumDecode(_$TestEnumEnumMap, e))
      .toList(),
  nullableEnumList: (json['nullableEnumList'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$TestEnumEnumMap, e))
      .toList(),
);

const _$NestedFieldMap = <String, String>{
  'value': 'value',
  'simple': 'simple',
  'valueList': 'valueList',
  'boolList': 'boolList',
  'stringList': 'stringList',
  'numList': 'numList',
  'objectList': 'objectList',
  'dynamicList': 'dynamicList',
  'boolSet': 'boolSet',
  'enumValue': 'enumValue',
  'nullableEnumValue': 'nullableEnumValue',
  'enumList': 'enumList',
  'nullableEnumList': 'nullableEnumList',
};

// ignore: unused_element
abstract class _$NestedPerFieldToJson {
  // ignore: unused_element
  static Object? value(Nested? instance) => instance;
  // ignore: unused_element
  static Object? simple(int? instance) => instance;
  // ignore: unused_element
  static Object? valueList(List<Nested>? instance) => instance;
  // ignore: unused_element
  static Object? boolList(List<bool>? instance) => instance;
  // ignore: unused_element
  static Object? stringList(List<String>? instance) => instance;
  // ignore: unused_element
  static Object? numList(List<num>? instance) => instance;
  // ignore: unused_element
  static Object? objectList(List<Object?>? instance) => instance;
  // ignore: unused_element
  static Object? dynamicList(List<dynamic>? instance) => instance;
  // ignore: unused_element
  static Object? boolSet(Set<bool>? instance) => instance?.toList();
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

Map<String, dynamic> _$NestedToJson(Nested instance) => <String, dynamic>{
  'value': instance.value,
  'simple': instance.simple,
  'valueList': instance.valueList,
  'boolList': instance.boolList,
  'stringList': instance.stringList,
  'numList': instance.numList,
  'objectList': instance.objectList,
  'dynamicList': instance.dynamicList,
  'boolSet': instance.boolSet?.toList(),
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

EmptyModel _$EmptyModelFromJson(Map<String, dynamic> json) => EmptyModel();

const _$EmptyModelFieldMap = <String, String>{};

// ignore: unused_element
abstract class _$EmptyModelPerFieldToJson {}

Map<String, dynamic> _$EmptyModelToJson(EmptyModel instance) =>
    <String, dynamic>{};

MinValidation _$MinValidationFromJson(Map<String, dynamic> json) =>
    MinValidation(
      (json['intNbr'] as num).toInt(),
      (json['doubleNbr'] as num).toDouble(),
      json['numNbr'] as num,
    );

const _$MinValidationFieldMap = <String, String>{
  'intNbr': 'intNbr',
  'doubleNbr': 'doubleNbr',
  'numNbr': 'numNbr',
};

// ignore: unused_element
abstract class _$MinValidationPerFieldToJson {
  // ignore: unused_element
  static Object? intNbr(int instance) => instance;
  // ignore: unused_element
  static Object? doubleNbr(double instance) => instance;
  // ignore: unused_element
  static Object? numNbr(num instance) => instance;
}

Map<String, dynamic> _$MinValidationToJson(MinValidation instance) =>
    <String, dynamic>{
      'intNbr': instance.intNbr,
      'doubleNbr': instance.doubleNbr,
      'numNbr': instance.numNbr,
    };

Root _$RootFromJson(Map<String, dynamic> json) =>
    Root(json['nonNullable'] as String, (json['nullable'] as num?)?.toInt());

const _$RootFieldMap = <String, String>{
  'nonNullable': 'nonNullable',
  'nullable': 'nullable',
};

// ignore: unused_element
abstract class _$RootPerFieldToJson {
  // ignore: unused_element
  static Object? nonNullable(String instance) => instance;
  // ignore: unused_element
  static Object? nullable(int? instance) => instance;
}

Map<String, dynamic> _$RootToJson(Root instance) => <String, dynamic>{
  'nonNullable': instance.nonNullable,
  'nullable': instance.nullable,
};

OptionalJson _$OptionalJsonFromJson(Map<String, dynamic> json) =>
    OptionalJson((json['value'] as num).toInt());

const _$OptionalJsonFieldMap = <String, String>{'value': 'value'};

// ignore: unused_element
abstract class _$OptionalJsonPerFieldToJson {
  // ignore: unused_element
  static Object? value(int instance) => instance;
}

Map<String, dynamic> _$OptionalJsonToJson(OptionalJson instance) =>
    <String, dynamic>{'value': instance.value};

MixedJson _$MixedJsonFromJson(Map<String, dynamic> json) =>
    MixedJson((json['value'] as num).toInt());

const _$MixedJsonFieldMap = <String, String>{'value': 'value'};

// ignore: unused_element
abstract class _$MixedJsonPerFieldToJson {
  // ignore: unused_element
  static Object? value(int instance) => instance;
}

Map<String, dynamic> _$MixedJsonToJson(MixedJson instance) => <String, dynamic>{
  'value': instance.value,
};

Sub _$SubFromJson(Map<String, dynamic> json) =>
    Sub(json['nonNullable'] as String, (json['nullable'] as num?)?.toInt());

const _$SubFieldMap = <String, String>{
  'nonNullable': 'nonNullable',
  'nullable': 'nullable',
};

// ignore: unused_element
abstract class _$SubPerFieldToJson {
  // ignore: unused_element
  static Object? nonNullable(String instance) => instance;
  // ignore: unused_element
  static Object? nullable(int? instance) => instance;
}

Map<String, dynamic> _$SubToJson(Sub instance) => <String, dynamic>{
  'nonNullable': instance.nonNullable,
  'nullable': instance.nullable,
};

CustomSubName _$CustomSubNameFromJson(Map<String, dynamic> json) =>
    CustomSubName(json['value'] as num);

const _$CustomSubNameFieldMap = <String, String>{'value': 'value'};

// ignore: unused_element
abstract class _$CustomSubNamePerFieldToJson {
  // ignore: unused_element
  static Object? value(num instance) => instance;
}

Map<String, dynamic> _$CustomSubNameToJson(CustomSubName instance) =>
    <String, dynamic>{'value': instance.value};

AsCamelCase _$AsCamelCaseFromJson(Map<String, dynamic> json) =>
    AsCamelCase(json['value'] as num);

const _$AsCamelCaseFieldMap = <String, String>{'value': 'value'};

// ignore: unused_element
abstract class _$AsCamelCasePerFieldToJson {
  // ignore: unused_element
  static Object? value(num instance) => instance;
}

Map<String, dynamic> _$AsCamelCaseToJson(AsCamelCase instance) =>
    <String, dynamic>{'value': instance.value};

CustomClassPrefix _$CustomClassPrefixFromJson(Map<String, dynamic> json) =>
    CustomClassPrefix(json['value'] as num);

const _$CustomClassPrefixFieldMap = <String, String>{'value': 'value'};

// ignore: unused_element
abstract class _$CustomClassPrefixPerFieldToJson {
  // ignore: unused_element
  static Object? value(num instance) => instance;
}

Map<String, dynamic> _$CustomClassPrefixToJson(CustomClassPrefix instance) =>
    <String, dynamic>{'value': instance.value};

ExplicitPath _$ExplicitPathFromJson(Map<String, dynamic> json) =>
    ExplicitPath(json['value'] as num);

const _$ExplicitPathFieldMap = <String, String>{'value': 'value'};

// ignore: unused_element
abstract class _$ExplicitPathPerFieldToJson {
  // ignore: unused_element
  static Object? value(num instance) => instance;
}

Map<String, dynamic> _$ExplicitPathToJson(ExplicitPath instance) =>
    <String, dynamic>{'value': instance.value};

ExplicitSubPath _$ExplicitSubPathFromJson(Map<String, dynamic> json) =>
    ExplicitSubPath(json['value'] as num);

const _$ExplicitSubPathFieldMap = <String, String>{'value': 'value'};

// ignore: unused_element
abstract class _$ExplicitSubPathPerFieldToJson {
  // ignore: unused_element
  static Object? value(num instance) => instance;
}

Map<String, dynamic> _$ExplicitSubPathToJson(ExplicitSubPath instance) =>
    <String, dynamic>{'value': instance.value};

SubClass _$SubClassFromJson(Map<String, dynamic> json) =>
    SubClass((json['instanceGetter'] as num).toInt());

const _$SubClassFieldMap = <String, String>{'instanceGetter': 'instanceGetter'};

// ignore: unused_element
abstract class _$SubClassPerFieldToJson {
  // ignore: unused_element
  static Object? instanceGetter(int instance) => instance;
}

Map<String, dynamic> _$SubClassToJson(SubClass instance) => <String, dynamic>{
  'instanceGetter': instance.instanceGetter,
};
