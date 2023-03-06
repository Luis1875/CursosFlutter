import 'package:flutter/material.dart';

class WigetImage extends StatelessWidget{
  //const WidgetImage({super.key});
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
        child: Image(
          image: NetworkImage('https://play-lh.googleusercontent.com/K8S0ZaCV8FxG4P603XUg7ao8B2wtvkID4N4T4rbrxIBQzMFvOH-J7v4daUZfoB36sg'),
        )
        )
    );
  }

}