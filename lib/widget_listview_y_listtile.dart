import 'package:flutter/material.dart';

class WidgetListViewAndListtitle extends StatelessWidget{
  const WidgetListViewAndListtitle({super.key});
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
        height: double.infinity,
        width: double.infinity,
        child: ListView(
                children: const[
          ListTile(
            title: Text('Harry'),
            subtitle: Text('¿como esta?'),
            leading: CircleAvatar(
              backgroundImage:  NetworkImage('https://lumiere-a.akamaihd.net/v1/images/cars80-1200x801_7b6d9330.jpeg?region=0,93,1200,676&width=960'),
            ),
            trailing: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('1'),
          ),
              ),
        
        ],),)
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