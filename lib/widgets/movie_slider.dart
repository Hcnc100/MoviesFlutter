import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/models/response_now_player/results.dart';
import 'package:movies/routes/app_routers.dart';

class MovieSlider extends StatelessWidget {
  final List<Movie> listMovies;
  String? nameScroll;

  MovieSlider({Key? key, required this.listMovies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ? if no have name, no show title
          if (nameScroll != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                nameScroll!,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listMovies.length,
              itemBuilder: (context, index) => _MoviePoster(
                movie: listMovies[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  final Movie movie;

  const _MoviePoster({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 180,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, AppRouters.detailsScreen),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                  width: 130,
                  height: 170,
                  fit: BoxFit.cover,
                  placeholder: const AssetImage("assets/no-image.jpg"),
                  image: NetworkImage(movie.fillPosterImg)),
            ),
          ),
          Text(
            movie.title ?? "No title",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
