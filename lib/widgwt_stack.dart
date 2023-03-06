import 'package:flutter/material.dart';

class WigetStack extends StatelessWidget{
  const WigetStack({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              
            )
          ],
        ),
      ),
    );
     
  }
}
