import 'package:flutter/material.dart';
import 'package:netflix/components/imag_items.dart';
import 'package:netflix/components/main_poster.dart';


import '../components/rounded_item.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const MainPoster(),
          HorizontalList('Avances',const RoundedItem(),9),
          const SizedBox(height: 10,),
          HorizontalList('Programas animados',const ImageItems(),9),
          const SizedBox(height: 10,),
          HorizontalList('Tendencias',const ImageItems(),9),
          const SizedBox(height: 10,),
          HorizontalList('Mi lista',const ImageItems(),9),
          const SizedBox(height: 20,),
        ],
      ),
      bottomNavigationBar: navBotton(),
    );
  }

  BottomNavigationBar navBotton(){
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,

      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Buscar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          label: 'Proximamente',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          label: 'Descargas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'Más',
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget HorizontalList(String title,Widget item,int quantity) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 6),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: quantity,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }
  
}