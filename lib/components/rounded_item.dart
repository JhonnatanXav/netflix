import 'package:flutter/material.dart';

class RoundedItem extends StatelessWidget{
  const RoundedItem({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110),
                border: Border.all(
                  color: Colors.yellow,
                  width: 2,
                ),
              ),
              child: ClipOval(
                child: Image.network(
                  'https://i.blogs.es/167efe/thor-love-and-thunder/450_1000.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.network(
              'https://dx35vtwkllhj9.cloudfront.net/marvel/thor-love-and-thunder/images/regions/es/updates/tt.png',
              height: 55,
            )
          ],
        ),
        const SizedBox(width: 10,)
      ],
    );
  }
}