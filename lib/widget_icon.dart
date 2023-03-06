import 'package:flutter/material.dart';

class WigetIcon extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 111, 76, 175),
      title: const Text('Mi primer pantalla'),
      leading: const Icon(Icons.accessible_rounded),
      actions: [Icon(Icons.account_circle_rounded),
      ],),
      body: const Center(
        child: Text('Hola Mundo')
        )
    );
  }

}