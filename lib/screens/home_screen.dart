import 'package:flutter/material.dart';
import 'package:movies/models/response_now_player/results.dart';
import 'package:movies/providers/movie_provider.dart';
import 'package:movies/search/search_delegate.dart';
import 'package:movies/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Peliculas en el cine"),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () =>
                    showSearch(context: context, delegate: MovieDelegate()),
                icon: const Icon(Icons.search_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // * principal movies
              CardSwipe(movies: moviesProvider.listMovies),
              // * popular movies
              MovieSlider(
                listMovies: moviesProvider.listPopularMovies,
                onNextPage: () => moviesProvider.getPopularMovies(),
              ),
            ],
          ),
        ));
  }
}
