import 'package:netflix/core/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndpoints {
  static const downloads = "$kbaseurl/trending/movie/day?api_key=$apikey";
  static const search = "$kbaseurl/search/movie?api_key=$apikey";
  static const hotandnewMovie = "$kbaseurl/discover/movie?api_key=$apikey";
  static const hotandnewTV = "$kbaseurl/discover/tv?api_key=$apikey";
  static const hometv = "$kbaseurl/discover/tv?api_key=$apikey";
}
