//Widgets
//Existen dos tipos
//1.-StatelessWidget - widget sin estado
//2.-StatefulWidget - widget con estado
//Control + shif + P
import 'package:cursoflutter/widget_appbar.dart';
import 'package:flutter/material.dart';
//import 'package:cursoflutter/widget_texto.dart';
//import 'package:cursoflutter/wiget_scaffold.dart';
//import 'package:cursoflutter/widget_image.dart';
//import 'package:cursoflutter/widget_image_asset.dart';
import 'package:cursoflutter/widget_Container.dart';
//import 'package:cursoflutter/practica_degradado.dart';
import 'package:cursoflutter/widget.buttons.dart';
import 'package:cursoflutter/widget_listview_y_listtile.dart';
import 'package:cursoflutter/widget_animate_container.dart';
import 'package:cursoflutter/widget_formulario.dart';
void main() {
  runApp
  (const MyApp());//Funcion olbigattoria para correr nuestra app 

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
      return  MaterialApp(
        routes: {
          'home': (context) => const WigetButtons(),
         'practiaCuadro':(context) => const WigetContainer(),
         'widgetAppBar': (context) => const WigetAppbar(),
         'WidgetListViewAndListtitle':(context) => const WidgetListViewAndListtitle(),
         'WidgetAnimatedContainer' :(context) => const WidgetAnimatedContainer(),
         'WidgetFormulario' :(context) => const WidgetFormulario(),
       },
       debugShowCheckedModeBanner: true,
      initialRoute: 'WidgetFormulario',
      );// debugShowCheckedModeBanner: true, home: PracticaDegradado());
  }
}