import 'package:flutter/material.dart';

class PracticaDegradado extends StatelessWidget{
  const PracticaDegradado({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:const BoxDecoration(
              gradient: LinearGradient(
                colors:[ 
                  Colors.white, 
                  Colors.blue],
                  begin: Alignment.topLeft, end:Alignment.bottomRight)
            ),
          ),
             const Opacity(
          opacity: 0.1,
        child: Image(
          image: NetworkImage('https://store-images.s-microsoft.com/image/apps.8294.69435230515002378.477c7a96-5d17-45ec-95c2-a2739146b68d.fd377b26-2212-4834-b9f4-b14e17f411ec?q=90&w=480&h=270'),
        fit:BoxFit.cover,)
        ),
        ],
      ),
    );
  }}