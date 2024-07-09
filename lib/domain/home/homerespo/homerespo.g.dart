// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homerespo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Homerespo _$HomerespoFromJson(Map<String, dynamic> json) => Homerespo(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Homeresult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomerespoToJson(Homerespo instance) => <String, dynamic>{
      'results': instance.results,
    };

Homeresult _$HomeresultFromJson(Map<String, dynamic> json) => Homeresult(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      originalName: json['original_name'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$HomeresultToJson(Homeresult instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_name': instance.originalName,
      'poster_path': instance.posterPath,
    };
