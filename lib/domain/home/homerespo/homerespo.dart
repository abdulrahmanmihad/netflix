import 'package:json_annotation/json_annotation.dart';



part 'homerespo.g.dart';

@JsonSerializable()
class Homerespo {
  @JsonKey(name: 'results')
  List<Homeresult> results;

  Homerespo({this.results = const[]});

  factory Homerespo.fromJson(Map<String, dynamic> json) {
    return _$HomerespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomerespoToJson(this);
}

@JsonSerializable()
class Homeresult {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_name')
  String? originalName;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  

  Homeresult({
    this.backdropPath,
   
    this.id,
   
    this.originalName,
   
    this.posterPath,
    
  });

  factory Homeresult.fromJson(Map<String, dynamic> json) {
    return _$HomeresultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeresultToJson(this);
}
