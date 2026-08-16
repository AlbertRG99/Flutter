// Future es asíncrono
void main() {
  print('Inicio del programa');

  httpGet('https://google.com/').then((value) {
    print(value);
  }).catchError( (error) {
    print('Error: $error');
  } );

  print('Fin del programa');
}

Future<String> httpGet( String url ){

  return Future.delayed( const Duration(seconds: 1), () {
    throw 'Error en la petición HTTP';
    //return 'Respuesta de la petición http';
  } );

}