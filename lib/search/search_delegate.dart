import 'package:flutter/material.dart';
import 'package:movies/models/response_now_player/results.dart';
import 'package:movies/providers/movie_provider.dart';
import 'package:movies/routes/app_routers.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class MovieDelegate extends SearchDelegate {
  @override
  String? get searchFieldLabel => "Buscar Pelicula";
  List<Movie> listResult = [];

  @override
  List<Widget>? buildActions(BuildContext context) {
    if (query.isNotEmpty) {
      return [
        IconButton(onPressed: () => query = "", icon: const Icon(Icons.clear))
      ];
    }
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return _showResultQuery();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final movieProvider = Provider.of<MoviesProvider>(context, listen: false);
    if (query.isEmpty) {
      return const Center(
        child: Icon(
          Icons.movie_creation_outlined,
          color: Colors.black38,
          size: 150,
        ),
      );
    } else {
      movieProvider.getSuggestionsByQuery(query);
      return StreamBuilder(
          stream: movieProvider.suggestionsStream,
          builder: (context, AsyncSnapshot<List<Movie>> snapshot) {
            if (listResult.isNotEmpty &&
                snapshot.connectionState == ConnectionState.waiting) {
              return _showResultQuery();
            }
            return getWidgetFromData(snapshot);
          });
    }
  }

  Widget getWidgetFromData(AsyncSnapshot<List<Movie>> snapshot) {
    listResult.clear();
    if (snapshot.hasData) {
      final movies = snapshot.data!;
      if (movies.isEmpty) {
        return const Center(child: Text("Sin datos"));
      } else {
        listResult.addAll(movies);
        return _showResultQuery();
      }
    } else if (snapshot.hasError) {
      return const Center(child: Text("Tenemos un error"));
    } else {
      return _MovieSheemer();
    }
  }

  ListView _showResultQuery() {
    return ListView.builder(
        itemCount: listResult.length,
        itemBuilder: (context, index) => _MovieItem(movie: listResult[index]));
  }
}

class _MovieSheemer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade500,
      highlightColor: Colors.grey.shade100,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 48.0,
                        height: 48.0,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ]),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4));
          }),
    );
  }
}

class _MovieItem extends StatelessWidget {
  final Movie movie;

  const _MovieItem({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    movie.heroId = "search/${movie.id}";
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      child: ListTile(
        leading: Hero(
          tag: movie.heroId!,
          child: FadeInImage(
              placeholder: const AssetImage("assets/no-image.jpg"),
              image: NetworkImage(movie.fullPosterImg),
              width: 50,
              fit: BoxFit.cover),
        ),
        title: Text(movie.originalTitle!),
        onTap: () {
          Navigator.pushNamed(context, AppRouters.detailsScreen,
              arguments: movie);
        },
      ),
    );
  }
}
