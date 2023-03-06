import 'package:flutter/material.dart';

class WidgetTextFormField extends StatefulWidget {
  const WidgetTextFormField({super.key});

  @override
  State<WidgetTextFormField> createState() => _WidgetTextFormFieldState();
}

class _WidgetTextFormFieldState extends State<WidgetTextFormField> {
  String texto = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber,
        title: const Text('TextFormField'),
        leading: const Icon(Icons.arrow_back_ios),
        actions: const [Icon(Icons.account_circle_outlined)],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'Nombre'),
                textCapitalization: TextCapitalization.sentences,
                onFieldSubmitted: (valor) {
                  //Nos sirve para realizar una accion al terminar de escribir
                  print('onFieldSubmitted: $valor');
                },
                onChanged: (valor) {
                  //Nos sirve para realizar una accion por cada valor que se escribe
                  setState(() {
                    print('OnChanged: $valor');
                    texto = valor;
                  });
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Text(texto),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_box_outlined),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Contraseña'),
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(hintText: 'Teléfono'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
