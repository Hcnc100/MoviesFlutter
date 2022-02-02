import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:movies/models/response_now_player/results.dart';
import 'package:movies/routes/app_routers.dart';

class CardSwipe extends StatelessWidget {
  final List<Movie> movies;

  const CardSwipe({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (movies.isEmpty) {
      // ? show only when the movies is zero
      return SizedBox(
        width: double.infinity, // * fill max width
        height: size.height * 0.5, // * 50% of the screen
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      height: size.height * 0.5,
      child: Swiper(
        itemCount: movies.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        onTap: (index) {
          Navigator.pushNamed(context, AppRouters.detailsScreen,arguments: movies[index]);
        },
        itemBuilder: (_, index) {
          final movie=movies[index];
          movie.heroId="swipe/${movie.id}";
          return Hero(
            tag: movie.heroId!,
            child: ClipRRect(
              // * add circular border
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: const AssetImage("assets/no-image.jpg"),
                image: NetworkImage(movie.fullPosterImg),
                fit: BoxFit.cover, // * adapter img to border
              ),
            ),
          );
        },
      ),
    );
  }
}
