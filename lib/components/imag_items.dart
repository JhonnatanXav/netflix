import 'package:flutter/material.dart';

class ImageItems extends StatelessWidget{
  const ImageItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          'https://lumiere-a.akamaihd.net/v1/images/beta_epic_payoff_las_f8ee4a65.jpeg',
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 10,),
        Image.network(
          'https://lumiere-a.akamaihd.net/v1/images/image_4f447b1d.jpeg',
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 10,),
        Image.network(
          'http://blocs.xtec.cat/quevolsllegir/files/2016/04/Sense-t%C3%ADtol.png',
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 10,),
        Image.network(
          'https://www.laguiadelvaron.com/wp-content/uploads/2019/07/portadas-pel%C3%ADculas-iguales-www.laguiadelvaron-16.jpg',
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 10,)
      ],
    );
  }
}