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
      body: SizedBox(
        width: double.infinity,
        
                child: Column(

        ),
      )
    );
  }
}
