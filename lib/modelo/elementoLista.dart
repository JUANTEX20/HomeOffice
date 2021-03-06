
import 'package:HomeOffice/modelo/bitacora.dart';
import 'package:HomeOffice/vista/ActividadDetalles.dart';
import 'package:flutter/material.dart';


class ListItem extends StatelessWidget{
  // final Dog registro;
  final bitacora registro;

  ListItem({Key key,this.registro}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text(registro.Nombre.substring(0, 1)),),
        title: Text(registro.Nombre),
        subtitle: Text("Fecha: " + registro.fecha.toString()+"\n"+"Descripcion: "+registro.detalles.toString()),

        onTap: (){

          Navigator.push(context,
            MaterialPageRoute(builder: (context) => ActividadDetalles(Act:registro)),);

        },

      ),
    );
  }

}


