import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget{
  const Calculadora({super.key});
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(
    elevation: 0,
    backgroundColor: Colors.black,
    title: const Text('Calculadora'),
    leading: const Icon(Icons.arrow_back),
    actions: const [Icon(Icons.account_box)],
   ),
   body: Container(
    width: double.infinity,
    color: Colors.black,
    child:const  Column(
      children: [
        Expanded(child: Row(
          children: [cuadro(color: Colors.grey, child:  Text('Luis Angel Navarrete Sanchez', style: TextStyle(fontSize: 60, color: Colors.white))), 
          ],),),
            Expanded(
    child: Row(
      children: [
        cuadro(color: Colors.grey, child:  Text('7', style: TextStyle(fontSize: 80, color: Colors.white))),
        cuadro(color: Colors.grey, child:  Text('8', style: TextStyle(fontSize: 80, color: Colors.white))),
        cuadro(color: Colors.grey, child:  Text('9', style: TextStyle(fontSize: 80, color: Colors.white) )),
        cuadro(color: Colors.orange, child:  Text('+', style: TextStyle(fontSize: 80, color: Colors.white))),
      ],),),
        Expanded(
    child: Row(
      children: [
        cuadro(color: Colors.grey, child:  Text('4', style: TextStyle(fontSize: 80, color: Colors.white))),
        cuadro(color: Colors.grey, child:  Text('5',style: TextStyle(fontSize: 80, color: Colors.white))),
        cuadro(color: Colors.grey, child:  Text('6', style: TextStyle(fontSize: 80, color: Colors.white))),
        cuadro(color: Colors.orange, child:  Text('-', style: TextStyle(fontSize: 80, color: Colors.white))),
      ],),),
        Expanded(
    child: Row(
      children: [
        cuadro(color: Colors.grey, child:  Text('1',style: TextStyle(fontSize: 80, color: Colors.white))),
        cuadro(color: Colors.grey, child:  Text('2',style: TextStyle(fontSize: 80, color: Colors.white))),
        cuadro(color: Colors.grey, child:  Text('3',style: TextStyle(fontSize: 80, color: Colors.white))),
        cuadro(color: Colors.orange, child:  Text('*',style: TextStyle(fontSize: 80, color: Colors.white))),
      ],),),
        Expanded(
    child: Row(
      children: [
        cuadro(color: Colors.grey, child:  Text('0',style: TextStyle(fontSize: 80, color: Colors.white))),
        cuadro(color: Colors.grey, child:  Text('.',style: TextStyle(fontSize: 80, color: Colors.white))),
        cuadro(color: Colors.orange, child:  Text('=',style: TextStyle(fontSize: 80, color: Colors.white))),
        cuadro(color: Colors.orange, child:  Text('/',style: TextStyle(fontSize: 80, color: Colors.white))),
      ],),),
      ],),
   ),
 

   );
  }

}
// ignore: camel_case_types
class cuadro extends StatelessWidget{
  final Color color;
final Widget child;
const cuadro({Key? key, required this.color, required this.child})
: super(key: key);


  @override
  Widget build(BuildContext context) {
   return Expanded(child: Container(
    margin: const EdgeInsets.all(1),
    color: color,
    child: Center(child: child),
   ));
  }}