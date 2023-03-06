import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WigetCheckBox extends StatefulWidget{
   WigetCheckBox({super.key});

  @override
  State<WigetCheckBox> createState() => _WigetCheckBoxState();
}

class _WigetCheckBoxState extends State<WigetCheckBox> {
  bool? isSelected =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.amber,
      title: const Text('CheckBox'),
      leading: const Icon(Icons.arrow_back_ios),
      actions: const [Icon(Icons.account_circle_outlined)],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [Checkbox(value: isSelected, onChanged: (newValue){
            setState(() {
            print(newValue);
            isSelected=newValue;   
            });
           
          
          }),
          CheckboxListTile(
            title: const Text('Recuerdame'),
            subtitle: const Text('La proxima vez no'),
            value: isSelected, onChanged: (value){
            
            print(value);
            isSelected= value;
          })
          ],
        ),
      ),
    );
  }
}

  