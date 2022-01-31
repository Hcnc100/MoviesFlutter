import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies/models/response_now_player/movie_response.dart';
import 'package:movies/models/response_now_player/results.dart';
import 'package:movies/models/response_popular/response_popular.dart';
import 'package:movies/providers/keys.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = Keys.keyTmdb;
  final String _baseUrl = "api.themoviedb.org";
  final String _language = "es";

  List<Movie> listMovies = [];
  List<Movie> listPopularMovies = [];
  int _popularPage = 0;

  MoviesProvider() {
    getOnDisplayMovies();
    getPopularMovies();
  }

  // ? for default the page of movies is one
  Future<String> _getJsonData(String endPoint, [int page = 1]) async {
    var url = Uri.https(_baseUrl, endPoint,
        {"api_key": _apiKey, "language": _language, "page": "$page"});
    final response = await http.get(url);
    return response.body;
  }

  getOnDisplayMovies() async {
    final jsonData = await _getJsonData("3/movie/now_playing");
    listMovies = movieResponseFromJson(jsonData).results ?? [];
    print("Hola");
    notifyListeners();
  }

  getPopularMovies() async {
    // * this update the current page, of recall this method
    _popularPage++;
    final jsonData = await _getJsonData("3/movie/popular", _popularPage);
    final popularResponse = responsePopularFromJson(jsonData).results ?? [];
    // ! this, destructure the list
    listPopularMovies = [...listPopularMovies, ...popularResponse];
    notifyListeners();
  }
}
