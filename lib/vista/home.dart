import 'package:flutter/material.dart';
import 'package:HomeOffice/vista/ActividadesLista.dart';

class Home extends StatelessWidget {

  static BuildContext contexto;

  const Home({Key key}): super(key: key);

  ListTile getListItem(Icon icono, String opcion,String route){
    return ListTile(
      leading: icono,
      title: Text(opcion),
      onTap: (){
        Navigator.pushNamed(contexto, route);
      },


    );

  }


  ListView getMenu(BuildContext context){

    return ListView(
      children: <Widget>[
        Image.asset("assets/File.jpg"),
        DrawerHeader(child:Text("Juan Pablo Turrubiates Paz",textAlign: TextAlign.center,textScaleFactor: 2.5,)),
        getListItem(Icon(Icons.done_all),"Todas las Actividades","/"),
        getListItem(Icon(Icons.clear_all),"Limpieza","/"),
        getListItem(Icon(Icons.build),"Construccion y Reparaciones","/"),
        getListItem(Icon(Icons.add), "Mas", "/")

      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    contexto = context;

    return Scaffold(
      appBar: AppBar(
        title: Text("Actividades en Casa"),
      ),
      drawer: Drawer(
        child: getMenu(context),
      ),
      body: ActividadesLista(),
    );
  }
}