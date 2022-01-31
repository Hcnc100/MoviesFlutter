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
          movie: movie,
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            _PosterAndTitle(
              movie: movie,
            ),
            _OverView(),
            CastingCard()
          ]),
        )
      ],
    ));
  }
}

class _OverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ullamcorper ipsum in justo posuere viverra. Fusce sodales ante lorem, non ultrices ante vulputate a. Duis in nisl erat. Praesent eu tincidunt velit. Proin in diam pharetra ligula congue eleifend ut quis tortor. Fusce rutrum leo mauris. Nulla ornare pretium tellus.\nPellentesque at velit in ligula hendrerit lobortis. Vestibulum hendrerit leo at mauris fermentum, vel viverra turpis convallis. Quisque non ante a odio blandit mollis. Aliquam erat volutpat. Donec congue ligula id maximus eleifend. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent sodales purus quis euismod blandit. Vestibulum lobortis eros mi, sed tempor justo euismod vitae. Donec sollicitudin metus eu nibh ultricies euismod. Donec venenatis tristique lorem sit amet tempus. Duis rhoncus, nunc ac accumsan fringilla, nisi dolor mattis justo, nec molestie arcu velit eget lectus. Proin eleifend, ex non malesuada maximus, neque leo imperdiet eros, eu posuere ex lorem et erat. Proin nec diam eu leo ornare tempus. Etiam a velit id sem fermentum aliquam nec in massa. Donec cursus massa magna, eget congue est porta et. Suspendisse vel facilisis risus, vel dapibus dolor.\nIn vitae neque eget purus porttitor iaculis. Sed nisi neque, aliquet et massa at, efficitur feugiat neque. Proin egestas vulputate posuere. Nullam fringilla molestie justo, eu malesuada metus molestie vitae. Phasellus felis diam, venenatis pellentesque congue ac, efficitur sed ex. Morbi sodales bibendum leo. Donec vehicula erat non porttitor tincidunt.",
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  final Movie movie;

  const _CustomAppBar({Key? key, required this.movie}) : super(key: key);

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
          child: Text(movie.title!,textAlign: TextAlign.center,),
          padding: const EdgeInsets.only(bottom: 20,left: 10,right: 10),
        ),
        background: FadeInImage(
          placeholder: const AssetImage("assets/loading.gif"),
          image: NetworkImage(movie.fullBackgroundImg),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  final Movie movie;

  const _PosterAndTitle({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: const AssetImage("assets/no-image.jpg"),
              image: NetworkImage(movie.fullPosterImg),
              height: 150,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.title!,
                    style: textTheme.headline5,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2),
                Text(movie.originalTitle!,
                    style: textTheme.subtitle1,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2),
                Row(
                  children: [
                    const Icon(Icons.star_outline, size: 15, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text('movie.voteAverage', style: textTheme.caption),
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
