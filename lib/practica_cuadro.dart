import 'dart:math';

import 'package:flutter/material.dart';

class PracticaCuadro extends StatelessWidget{
  const PracticaCuadro({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.amber,
      title: const Text('Mi primer pantalla'),
      leading: const Icon(Icons.arrow_back_ios),
      actions:const [Icon(Icons.account_circle_outlined)],
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromRGBO(255, 100, 140, 1),
       child: Container(
        color: Colors.green,
        child: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(20),
        width: 100,
        color: Colors.red,
        child: const Image( 
       image: AssetImage('lib/assets/images/max.jpg')
       ))
       ),
     ) );
  }
  Color asignarColor(){
    Random random= Random();
    Color colorAleatorio = Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
    return colorAleatorio;
  }
}