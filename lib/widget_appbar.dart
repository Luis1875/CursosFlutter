import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WigetAppbar extends StatelessWidget{
  const WigetAppbar({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.green,
      title: const Text('Mi primer pantalla')),
      body: const Center(
        child: Text('Hola Mundo')
        )
    );
  }
customAppbar(){
  if(Platform.isIOS){
    return const CupertinoNavigationBar(
      middle: Text('Titulo'),
    );
  }else{
    return AppBar(
    elevation: 0,
    backgroundColor: Colors.indigo,
    title: const Text('Mi primer pantalla'),
    centerTitle: true,
    );
  }
}
}