import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies/helpers/debouncer.dart';
import 'package:movies/models/response_cast/cast.dart';
import 'package:movies/models/response_cast/response_cast.dart';
import 'package:movies/models/response_now_player/movie_response.dart';
import 'package:movies/models/response_now_player/results.dart';
import 'package:movies/models/response_popular/response_popular.dart';
import 'package:movies/models/response_search/response_search.dart';
import 'package:movies/providers/keys.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = Keys.keyTmdb;
  final String _baseUrl = "api.themoviedb.org";
  final String _language = "es";

  List<Movie> listMovies = [];
  List<Movie> listPopularMovies = [];
  int _popularPage = 0;
  Map<int, List<Cast>> movieCast = {};
  Map<String, List<Movie>> movieSearch = {};

  final debouncer = Debouncer(duration: const Duration(milliseconds: 500));

  final StreamController<List<Movie>> _suggestionsStreamController =
      StreamController.broadcast();

  Stream<List<Movie>> get suggestionsStream =>
      _suggestionsStreamController.stream;

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

  Future<List<Cast>> getCastOfMovie(int idMovie) async {
    if (movieCast.containsKey(idMovie)) return movieCast[idMovie]!;

    final jsonData = await _getJsonData("3/movie/$idMovie/credits");
    final listCast = responseCastFromJson(jsonData).cast ?? [];
    movieCast[idMovie] = listCast;
    return listCast;
  }

  getOnDisplayMovies() async {
    final jsonData = await _getJsonData("3/movie/now_playing");
    listMovies = movieResponseFromJson(jsonData).results ?? [];
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

  Future<List<Movie>> getListMovieSearch(String query) async {
    var url = Uri.https(_baseUrl, "3/search/movie", {
      "api_key": _apiKey,
      "language": _language,
      "page": "1",
      "query": query
    });
    final jsonData = await http.get(url);
    listMovies = responseSearchFromJson(jsonData.body).results ?? [];

    movieSearch.clear();
    movieSearch[query] = listMovies;

    return listMovies;
  }

  void getSuggestionsByQuery(String query) {
    if (movieSearch.containsKey(query)) {
      _suggestionsStreamController.add(movieSearch[query]!);
      return;
    }
    debouncer.value = "";
    debouncer.onValue = (value) async {
      final results = await getListMovieSearch(value);
      _suggestionsStreamController.add(results);
    };

    final time = Timer.periodic(const Duration(milliseconds: 200), (_) {
      debouncer.value = query;
    });

    Future.delayed(const Duration(milliseconds: 301))
        .then((value) => time.cancel());
  }
}
