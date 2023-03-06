import 'package:flutter/material.dart';

class WidgetFormulario extends StatefulWidget{
 const WidgetFormulario({super.key});

  @override
  State<WidgetFormulario> createState() => _WidgetFormularioState();
}
enum RadioOptions{uno , dos , tres, cuatro}

class _WidgetFormularioState extends State<WidgetFormulario> {
  bool? valueCheckBox = false;
  bool? valueSwitchListTile = false;
  double valueSlider = 1.0;
  List<String> intemsDropdown = ['Uno', 'Dos', 'Tres', 'Cuatro'];
  String valueDropdown = 'Uno';
  RadioOptions valueRadio = RadioOptions.uno;

  @override
   Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
    centerTitle: true,
    title: const Text('Widgets Formulario'),
    backgroundColor: Colors.amber,
    ),
    body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView( 
      children: [
        const Text('TextFormField'),
        TextFormField(),
        CheckboxListTile(
        title: const Text('Soy un checkbox'),
        subtitle: const Text('Presioname'),
        value: valueCheckBox, 
        onChanged: (value){
          setState(() {
            valueCheckBox = value;
          });
        },
        ),
        SwitchListTile(
          title: const Text('Soy un SwitchListe'),
          subtitle: const Text('Presioname'),
          value: valueSwitchListTile!, 
          onChanged: (value){
            setState(() {
              valueSwitchListTile = value;
            });
        }),
        Slider(
          max: 10,
          min: 0,
          divisions: 5,
          value: valueSlider, 
          onChanged: (value){
            setState(() {
              valueSlider =value;
            print(value);
            });
            DropdownButton(
              value: valueDropdown,
              items: intemsDropdown
              .map((item) => 
              DropdownMenuItem(value: item, child: Text(item)))
              .toList(),
              onChanged: (value){
                setState(
                  () {
                  valueDropdown = value!;
                },
                );
              },
              );
        }
        ),
        RadioListTile<RadioOptions>(
        title: const Text('Uno'),
        value: RadioOptions.uno,
        groupValue: valueRadio, 
        onChanged: (value){
          setState(() {
            valueRadio = value!;
          });
        }),
        RadioListTile<RadioOptions>(
        title: const Text('Dos'),
        value: RadioOptions.dos,
        groupValue: valueRadio, 
        onChanged: (value){
          setState(() {
            valueRadio = value!;
          });
        }),
        RadioListTile<RadioOptions>(
        title: const Text('Tres'),
        value: RadioOptions.tres,
        groupValue: valueRadio, 
        onChanged: (value){
          setState(() {
            valueRadio = value!;
          });
        }),
        RadioListTile<RadioOptions>(
        title: const Text('Cuatro'),
        value: RadioOptions.cuatro,
        groupValue: valueRadio, 
        onChanged: (value){
          setState(() {
            valueRadio = value!;
          });
        }),
        TextFormField(
        decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: 'Fecha de nacimiento',
        suffixIcon: IconButton(
          onPressed: (){
            showDatePicker(
              context: context,
               initialDate: DateTime.now(),
                firstDate: DateTime.now()
                .subtract(const Duration(days: 3650)), 
                lastDate: 
                DateTime.now().add(const Duration(days: 3650)),
                
                );
          }, 
          icon: const Icon(Icons.calendar_month_outlined))),
        ),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
        decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: 'Hora de inicio de clase',
        suffixIcon: IconButton(
          onPressed: (){
            showTimePicker(context: context, initialTime: TimeOfDay.now());
          },
           icon: const Icon(Icons.timer))),
        ),
        ElevatedButton(onPressed: (){
          showDialog(
          context: context, 
          builder: (context){
            return AlertDialog(
              title: const Text('Error'),
              content: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('No hay llenado todos los campos'),
                  Text('No hay llenado todos los campos'),
                  Text('No hay llenado todos los campos'),
                  Text('No hay llenado todos los campos'),
                  Text('No hay llenado todos los campos'),
                ],
                ),
                actions: [
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                     child: const Text('Salir'))
                ],
                );
          });
        },
        child: const Text('Guardar')), 
      ],
      ),
      ),
  

);
   }
}