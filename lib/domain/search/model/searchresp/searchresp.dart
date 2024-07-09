import 'package:json_annotation/json_annotation.dart';

import '../../../../core/constsize.dart';

part 'searchresp.g.dart';

@JsonSerializable()
class Searchresp {
  @JsonKey(name: 'results')
  List<SearchResultData> results;

  Searchresp({this.results = const []});

  factory Searchresp.fromJson(Map<String, dynamic> json) {
    return _$SearchrespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchrespToJson(this);
}

@JsonSerializable()
class SearchResultData {
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  String get posterimageurl => '$imageAppendurl$posterPath';
  SearchResultData({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}
