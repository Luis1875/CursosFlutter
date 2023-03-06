import 'dart:math';

import 'package:flutter/material.dart';

class WidgetAnimatedContainer extends StatefulWidget{
  const WidgetAnimatedContainer({super.key});

  @override
  State<WidgetAnimatedContainer> createState() =>
      _WidgetAnimatedContainerState();
}

class _WidgetAnimatedContainerState extends State<WidgetAnimatedContainer>{
  Color color = Colors.red;
  double width = 100;
  double height = 100;
  double radius =12;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 2000),
          decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(radius)),
            width: width,
            height: height,
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            cambiarValoresContainer();
          },
          child: const Icon(Icons.play_arrow),
          ),          
    );
  }
cambiarValoresContainer(){
  setState(() {
    Random random = Random();
    color = Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
    width = random.nextDouble() * 500;
    height = random.nextDouble() * 500;
    radius = random.nextDouble() * 500;
  });
}
}