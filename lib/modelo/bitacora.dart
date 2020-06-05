
class bitacora{
  final String fecha;
  final String Nombre;
  final String detalles;

  bitacora({this.fecha,this.Nombre, this.detalles});


  /* Se crea el metodo toMap para transformar los datos de un formato de objeto
  a mapa. Este es necesario para introducir registros a la base de datos.
   */
  Map<String, dynamic> toMap() {
    return {
      'fecha': fecha,
      'dron': Nombre,
      'detalles': detalles,
    };
  }

  /*factory bitacora.fromJson(Map<String, dynamic> json) {
    return bitacora(
      fecha: json['fecha'],
      dron: json['dron'],
      detalles: json['detalles'],

    );
  }
*/

}
