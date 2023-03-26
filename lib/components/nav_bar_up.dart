import 'package:flutter/material.dart';

class NavBarUp extends StatelessWidget{
  const NavBarUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset('assets/images/logo_netflix.png',
        width: 30,),
        const Text('Programas', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const Text('Películas', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const Text('Mi lista', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}