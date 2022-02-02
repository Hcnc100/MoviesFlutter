import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/models/response_cast/cast.dart';
import 'package:movies/providers/movie_provider.dart';
import 'package:provider/provider.dart';

class CastingCard extends StatelessWidget {
  final int idMovie;

  const CastingCard({Key? key, required this.idMovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MoviesProvider>(context, listen: false);

    return FutureBuilder(
      future: provider.getCastOfMovie(idMovie),
      builder: (_, AsyncSnapshot<List<Cast>> snapshot) {
        if (!snapshot.hasData) {
          return const CupertinoActivityIndicator();
        }

        final listCast = snapshot.data!;

        return Container(
          width: double.infinity,
          height: 180,
          margin: const EdgeInsets.only(bottom: 10),
          child: ListView.builder(
              itemCount: listCast.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final cast = listCast[index];
                return _CastCard(urlImg: cast.fullProfilePath, nameActor: cast.name!);
              }),
        );
      },
    );
  }
}

class _CastCard extends StatelessWidget {
  final String urlImg;
  final String nameActor;

  const _CastCard({Key? key, required this.urlImg, required this.nameActor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage(
              placeholder: const AssetImage("assets/no-image.jpg"),
              image: NetworkImage(urlImg),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            nameActor,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
