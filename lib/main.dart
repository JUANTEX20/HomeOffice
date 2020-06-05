
import 'package:flutter/material.dart';
import 'package:HomeOffice/vista/home.dart';


void main() {
 // final ManipulacionBD bd = ManipulacionBD(); // Instancia de la clase para la manipulación de datos

 // bd.cargarDatos(); // Inserto datos ficticios a la base de datos SQLite

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Actividades en Casa',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primarySwatch: Colors.teal,
        ),
        home:Home() ,


    );
  }
}
