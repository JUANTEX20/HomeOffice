
import 'package:flutter/material.dart';
import 'package:HomeOffice/modelo/bitacora.dart';

class ActividadDetalles extends StatelessWidget {
  final bitacora Act;

  ActividadDetalles({this.Act});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Actividades Descripcion"),
      ),
      body: Center(
          child: Column(

            children: <Widget>[
              Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Text('Nombre de la Actividad:',style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                child: Text('' + Act.Nombre,style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic)),
              ),
              Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Text('Fecha de Actividad:',style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold))
              ),
              Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Text('' + Act.fecha,style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic))
              ),
              Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Text('Detalles de la Activdad:',style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold))
              ),
              Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Text('' + Act.detalles,style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),)
              ),
            ],

          )


      ),
    );
  }
}