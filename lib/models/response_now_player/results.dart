import 'dart:convert';

/// adult : false
/// backdrop_path : "/1Rr5SrvHxMXHu5RjKpaMba8VTzi.jpg"
/// genre_ids : [28,12,878]
/// id : 634649
/// original_language : "en"
/// original_title : "Spider-Man: No Way Home"
/// overview : "Peter Parker es desenmascarado y por tanto no es capaz de separar su vida normal de los enormes riesgos que conlleva ser un súper héroe. Cuando pide ayuda a Doctor Strange, los riesgos pasan a ser aún más peligrosos, obligándole a descubrir lo que realmente significa ser Spider-Man."
/// popularity : 13195.451
/// poster_path : "/rkLhaNa37IwzWis8rzWMAYTCdIK.jpg"
/// release_date : "2021-12-15"
/// title : "Spider-Man: No Way Home"
/// video : false
/// vote_average : 8.5
/// vote_count : 6054

Movie resultsFromJson(String str) => Movie.fromJson(json.decode(str));

String resultsToJson(Movie data) => json.encode(data.toJson());

class Movie {
  Movie({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  get fullPosterImg {
    return posterPath != null ?
    "https://image.tmdb.org/t/p/w500$posterPath" : "https://picsum.photos/200/300";
  }

  get fullBackgroundImg {
    return backdropPath != null ?
    "https://image.tmdb.org/t/p/w500$backdropPath" : "https://picsum.photos/200/300";
  }

  Movie.fromJson(dynamic json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'].toString();
    voteCount = json['vote_count'];
  }

  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  String? voteAverage;
  int? voteCount;

  String? heroId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['backdrop_path'] = backdropPath;
    map['genre_ids'] = genreIds;
    map['id'] = id;
    map['original_language'] = originalLanguage;
    map['original_title'] = originalTitle;
    map['overview'] = overview;
    map['popularity'] = popularity;
    map['poster_path'] = posterPath;
    map['release_date'] = releaseDate;
    map['title'] = title;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    return map;
  }
}
