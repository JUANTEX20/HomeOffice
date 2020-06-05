import 'package:flutter/material.dart';
import 'package:HomeOffice/modelo/bitacora.dart';
import 'package:HomeOffice/modelo/elementoLista.dart';


class ActividadesLista extends StatelessWidget {

  static String routeName = "/vuelosLista";

  const ActividadesLista({Key key}): super(key: key);

  List<bitacora> contruirLista() {

    var Actividad1 = bitacora(fecha: '25/03/2020',Nombre: 'Limpiar',detalles: 'Limpiar algunos lugeres de la casa');
    var Actividad2 = bitacora(fecha: '28/03/2020',Nombre: 'Lavar la cochera',detalles: 'Barrer y lavar la cochera');
    var Actividad3 = bitacora(fecha: '1/04/2020',Nombre: 'Alimentar al perro',detalles: 'Dar de comer al perro');
    var Actividad4 = bitacora(fecha: '2/04/2020',Nombre: 'Lavar el Auto',detalles: 'Lavar el automovil');
    var Actividad5 = bitacora(fecha: '4/04/2020',Nombre: 'Organizar mi cuarto',detalles: 'limpiar y organizar mi cuarto');
    var Actividad6 = bitacora(fecha: '7/04/2020',Nombre: 'Tirar basura',detalles: 'Sacar la basura de mi cuarto');
    var Actividad7 = bitacora(fecha: '9/04/2020',Nombre: 'Limpiar A/C',detalles: 'Limpiar los filtros de los A/C');
    var Actividad8 = bitacora(fecha: '11/04/2020',Nombre: 'Limpiar el patio',detalles: 'Barrer y recoger el patio');
    var Actividad9 = bitacora(fecha: '13/04/2020',Nombre: 'Reparar minilap',detalles: 'Limpiar y formatear minilap');
    var Actividad10 = bitacora(fecha: '15/04/2020',Nombre: 'Dar mantenimiento',detalles: 'Dar mantenimiento al CPU de la casa');
    var Actividad11 = bitacora(fecha: '17/04/2020',Nombre: 'Lavar el Baño',detalles: 'Lavar mi baño');
    var Actividad12 = bitacora(fecha: '18/04/2020',Nombre: 'Cambiar foco',detalles: 'Cambia focos fundidos');
    var Actividad13 = bitacora(fecha: '20/04/2020',Nombre: 'Limpiar Impresora',detalles: 'Dar mantenimiento a la impresora');
    var Actividad14 = bitacora(fecha: '25/04/2020',Nombre: 'Limpiar ventiladores',detalles: 'Desempolvar todos los ventiladores de techo');
    var Actividad15 = bitacora(fecha: '29/04/2020',Nombre: 'Reparar camaras',detalles: 'Restablecer el sistema de camaras de seguridad');
    var Actividad16 = bitacora(fecha: '3/05/2020',Nombre: 'Alimentar gallos',detalles: 'Dar de comer a los gallos y gallinas');
    var Actividad17 = bitacora(fecha: '9/05/2020',Nombre: 'Reparar desague',detalles: 'Cortar y poner codo al desegue de la casa');
    var Actividad18 = bitacora(fecha: '14/05/2020',Nombre: 'Hacer Extencion',detalles: 'Hacer una extencion electrica de 10m');
    var Actividad19 = bitacora(fecha: '24/05/2020',Nombre: 'Cocinar',detalles: 'Hacer un platillo para la comida del dia');
    var Actividad20 = bitacora(fecha: '1/06/2020',Nombre: 'Limpiar Cuadros',detalles: 'Limpiar los cuadros familiares');


    Map<int,bitacora> mapaAct={
      0: Actividad1,
      1: Actividad2,
      2: Actividad3,
      3: Actividad4,
      4: Actividad5,
      5: Actividad6,
      6: Actividad7,
      7: Actividad8,
      8: Actividad9,
      9: Actividad10,
      10: Actividad11,
      11: Actividad12,
      12: Actividad13,
      13: Actividad14,
      14: Actividad15,
      15: Actividad16,
      16: Actividad17,
      17: Actividad18,
      18: Actividad19,
      19: Actividad20,


    };

    return List.generate(mapaAct.length, (i) {

      return bitacora(

          fecha: mapaAct[i].fecha,
          Nombre: mapaAct[i].Nombre,
          detalles: mapaAct[i].detalles
      );
    });
  }
  List<ListItem> bitacoraACTV(){

    return contruirLista()
        .map((bitacora)=> ListItem(registro: bitacora))
        .toList();

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: bitacoraACTV(),
    );


  }
}