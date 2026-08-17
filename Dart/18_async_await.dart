// Await transforma los futures como si fuera código síncrono.
void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://google.com/');
    print(value);
  } catch(err) {
    print('Tenemos un erro: $err');
  }
  

  print('Fin del programa');
}

Future<String> httpGet( String url ) async {

  await Future.delayed( const Duration(seconds: 1) );
  //return 'Tenemos un valor de la petición';
  throw 'Error en la petición';

}