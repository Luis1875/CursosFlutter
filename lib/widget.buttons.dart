import 'package:flutter/material.dart';
//import 'package:cursoflutter/widget_Container.dart';
import 'package:cursoflutter/widget_listview_y_listtile.dart';

class WigetButtons extends StatelessWidget{
  const WigetButtons({super.key});
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
          children: [
            ElevatedButton( 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed:() {
                print('Ir a practica Cuadro');
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const WidgetListViewAndListtitle();
                }));
                },
                 child: const Text('ElevatedButton'),
                 ),
                 OutlinedButton(
                  style: OutlinedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: (){
                    print('Estoy presionando el OutlinedButton');
                  },
                   child: const Icon(Icons.add)
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, 'practicaCuadro');
                    }, 
                    child: const Text('Ir a la practica cuadro con navegacion nombrada'),
                    ),
                    IconButton(
                      onPressed: (){
                        print('Estoy presionando el IconButton');
                    }, 
                    icon: const Icon(Icons.edit)),
                    ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                    label: const Text('Borrar'),
            ),
            FloatingActionButton(
              onPressed: (){},
              child: const Icon(Icons.remove),
              )
         ],         
       ),
      ),
    );
  }
}



 