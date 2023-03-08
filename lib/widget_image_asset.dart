import 'package:flutter/material.dart';

class WigetImageAsset extends StatelessWidget{
  const WigetImageAsset({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.amber,
      title: const Text('Mi primer pantalla'),
      leading: const Icon(Icons.arrow_back_ios),
      actions:const [Icon(Icons.account_circle_outlined),
      ],),
      body: const Center(
        child: Image(
          image: AssetImage('lib/assets/images/maxresdefault.jpg'),
        )
        )
    );
  }

}