// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
  genre: (json['genre'] as List<dynamic>?)?.map((e) => e as String).toList(),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toSet(),
  likes: (json['likes'] as num).toInt(),
  poster: json['poster'] as String,
  rated: json['rated'] as String,
  runtime: json['runtime'] as String,
  title: json['title'] as String,
  year: (json['year'] as num).toInt(),
  id: json['id'] as String,
);

const _$MovieFieldMap = <String, String>{
  'id': 'id',
  'poster': 'poster',
  'likes': 'likes',
  'title': 'title',
  'year': 'year',
  'runtime': 'runtime',
  'rated': 'rated',
  'genre': 'genre',
  'tags': 'tags',
};

// ignore: unused_element
abstract class _$MoviePerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? poster(String instance) => instance;
  // ignore: unused_element
  static Object? likes(int instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? year(int instance) => instance;
  // ignore: unused_element
  static Object? runtime(String instance) => instance;
  // ignore: unused_element
  static Object? rated(String instance) => instance;
  // ignore: unused_element
  static Object? genre(List<String>? instance) => instance;
  // ignore: unused_element
  static Object? tags(Set<String>? instance) => instance?.toList();
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
  'id': instance.id,
  'poster': instance.poster,
  'likes': instance.likes,
  'title': instance.title,
  'year': instance.year,
  'runtime': instance.runtime,
  'rated': instance.rated,
  'genre': instance.genre,
  'tags': instance.tags?.toList(),
};

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
  authorName: json['authorName'] as String,
  message: json['message'] as String,
);

const _$CommentFieldMap = <String, String>{
  'authorName': 'authorName',
  'message': 'message',
};

// ignore: unused_element
abstract class _$CommentPerFieldToJson {
  // ignore: unused_element
  static Object? authorName(String instance) => instance;
  // ignore: unused_element
  static Object? message(String instance) => instance;
}

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
  'authorName': instance.authorName,
  'message': instance.message,
};
