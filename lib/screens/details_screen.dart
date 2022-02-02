import 'package:flutter/material.dart';
import 'package:movies/models/response_now_player/results.dart';
import 'package:movies/themes/app_theme.dart';
import 'package:movies/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _CustomAppBar(
          titleMovie: movie.title!,
          urlBackground: movie.fullBackgroundImg,
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            _PosterAndTitle(
              titleMovie: movie.title!,
              originalTitle: movie.originalTitle!,
              urlPosterImg: movie.fullPosterImg,
              voteAverage: movie.voteAverage!,
              heroId: movie.heroId!,
            ),
            _OverView(
              description: movie.overview!,
            ),
            CastingCard(idMovie: movie.id!)
          ]),
        )
      ],
    ));
  }
}

class _OverView extends StatelessWidget {
  final String description;

  const _OverView({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        description,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  final String urlBackground;
  final String titleMovie;

  const _CustomAppBar({
    Key? key,
    required this.urlBackground,
    required this.titleMovie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppTheme.primaryColor,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.all(0),
        centerTitle: true,
        title: Container(
          color: Colors.black12,
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          child: Text(
            titleMovie,
            textAlign: TextAlign.center,
          ),
          padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
        ),
        background: FadeInImage(
          placeholder: const AssetImage("assets/loading.gif"),
          image: NetworkImage(urlBackground),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  final String titleMovie;
  final String urlPosterImg;
  final String originalTitle;
  final String voteAverage;
  final String heroId;

  const _PosterAndTitle({
    Key? key,
    required this.titleMovie,
    required this.urlPosterImg,
    required this.originalTitle,
    required this.voteAverage,
    required this.heroId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Hero(
            tag:heroId ,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: const AssetImage("assets/no-image.jpg"),
                image: NetworkImage(urlPosterImg),
                height: 150,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleMovie,
                    style: textTheme.headline5,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2),
                Text(originalTitle,
                    style: textTheme.subtitle1,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2),
                Row(
                  children: [
                    const Icon(Icons.star_outline,
                        size: 15, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text(voteAverage, style: textTheme.caption),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
