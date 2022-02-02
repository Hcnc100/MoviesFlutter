import 'package:flutter/material.dart';
import 'package:movies/models/response_now_player/results.dart';
import 'package:movies/providers/movie_provider.dart';
import 'package:movies/routes/app_routers.dart';
import 'package:provider/provider.dart';

class MovieDelegate extends SearchDelegate {
  @override
  String? get searchFieldLabel => "Buscar Pelicula";

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
    return Text("Hola");
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
      return FutureBuilder(
          builder: (context, AsyncSnapshot<List<Movie>> snapshot) {
            if (snapshot.hasData) {
              final movies = snapshot.data!;
              return ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return _MovieItem(
                    movie: movies[index],
                  );
                },
              );
            } else {
              return const Center(
                child: Text("Sin datos"),
              );
            }
          },
          future: movieProvider.getListMovieSearch(query));
    }
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
    return ListTile(
      leading: FadeInImage(
          placeholder: const AssetImage("assets/no-image.jpg"),
          image: NetworkImage(movie.fullPosterImg),
          width: 50,
          fit: BoxFit.cover),
      title: Text(movie.originalTitle!),
      onTap: () {
        Navigator.pushNamed(context, AppRouters.detailsScreen,
            arguments: movie);
      },
    );
  }
}
