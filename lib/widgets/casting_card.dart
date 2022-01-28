
import 'package:flutter/material.dart';

class CastingCard extends StatelessWidget{
  const CastingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: 180,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => _CastCard()),
    );
  }

  

}

class _CastCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      color: Colors.green,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage(
              placeholder: AssetImage("assets/no-image.jpg"),
              image: NetworkImage("https://via.placeholder.com/150x300"),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Text("zsdfgdsfgdfgdgzdggdzsdfgdsfgdfgdgzdggdgyjhgfgyjhgf",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}