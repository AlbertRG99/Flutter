// Await transforma los futures como si fuera código síncrono.
void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://google.com/');
    print(value);
  } on Exception catch (error){
    print('Tenemos una excepción: $error');
  } finally {
    print('Fin del try/catch');
  }
  

  print('Fin del programa');
}

Future<String> httpGet( String url ) async {

  await Future.delayed( const Duration(seconds: 1) );

  throw new Exception('No hay parámetros en el URL');

  //return 'Tenemos un valor de la petición';
  //throw 'Error en la petición';

}