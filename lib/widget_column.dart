import 'package:flutter/material.dart';

class WigetColumn extends StatelessWidget{
  const WigetColumn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.amber,
      title: const Text('Mi primer pantalla'),
      leading: const Icon(Icons.arrow_back_ios),
      actions: const [Icon(Icons.account_circle_outlined)],
      ),
      body: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.orange,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ],
      )
    );
  }
}
class Cuadrito extends StatelessWidget{
  final Color color;
  const Cuadrito({
    super.key,required this.color,
  });


  @override
   build(BuildContext context) {
    return Container(width: 100, height: 100, color: color);
  }
  }