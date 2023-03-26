

import 'package:flutter/material.dart';
import 'package:netflix/components/nav_bar_up.dart';

class MainPoster extends StatelessWidget{
  const MainPoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        head(),
        infoSeries(),
        keypad(),
      ],
    ); 
  }

  Widget head(){
  
    return Stack(
      children: <Widget>[
        Image.network(
          'https://occ-0-1722-420.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABYA5_jQn9EOTiXpVsTVEaYkfF4g5L3Cs0JtC7KxnWYtcC0TdL_lYu_4boHsZWhRcXFYedL4MG0Z6zHcNVPeyW4QImgK8swlZbAK8.jpg',
          height: 350,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.black38,
                Colors.black
              ]
            )
          ),
        ),
        const SafeArea(
          child: NavBarUp()
        ),
      ],
    );
  }

  Widget infoSeries(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text('Acción', style: TextStyle(color: Colors.white,fontSize: 12),),
        SizedBox(width: 6,),
        Icon(Icons.fiber_manual_record,color: Colors.red,size: 8,),
        SizedBox(width: 6,),
        Text('Comedia',style: TextStyle(color: Colors.white,fontSize: 12),),
        SizedBox(width: 6,),
        Icon(Icons.fiber_manual_record,color: Colors.red,size: 8,),
        SizedBox(width: 6,),
        Text('Romance',style: TextStyle(color: Colors.white,fontSize: 12),),
        SizedBox(width: 6,),
        Icon(Icons.fiber_manual_record,color: Colors.red,size: 8,),
        SizedBox(width: 6,),
        Text('Infantil',style: TextStyle(color: Colors.white,fontSize: 12),)
      ],
    );
  }

  Widget keypad (){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: const <Widget>[
              Icon(Icons.check,color: Colors.white),
              SizedBox(height: 3,),
              Text('Mi lista', style: TextStyle(color: Colors.white,fontSize: 12),)
            ],
          ),
          ElevatedButton.icon(
            onPressed: (){},
            icon: const Icon(Icons.play_arrow,color: Colors.black,),
            label:const Text('Reproducir',style: TextStyle(color: Colors.black),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          ),
          Column(
            children: const <Widget>[
              Icon(Icons.info_outline,color: Colors.white),
              SizedBox(height: 3,),
              Text('Información', style: TextStyle(color: Colors.white,fontSize: 12),)
            ],
          )
        ],
      ),
    );
  }
}