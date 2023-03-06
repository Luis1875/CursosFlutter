import 'package:flutter/material.dart';

class WigetContainer extends StatelessWidget{
  const WigetContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.amber,
      title: const Text('Mi primer pantalla'),
      leading: const Icon(Icons.arrow_back_ios),
      actions:const  [Icon(Icons.account_circle_outlined)],
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromRGBO(255, 100, 140, 1),
        child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 255, 149, 10),
        child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 5, 56, 99), 
        child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 228, 4, 4),
        child: Container(
        margin:const EdgeInsets.all(8),
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        color:const Color.fromARGB(255, 233, 255, 34),
        child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 167, 69, 4),
        child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 5, 0, 0),
        child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 68, 5, 119),       
       child: Container(
        color: Colors.green,
        child: const Image( 
       image: AssetImage('lib/assets/images/max.jpg')
       )))))))))
       ),
    );
  }
}