void main() {
  print( 'Suma: ${saludarPersona(nombre:'Fernando')}' );
}


// Parámetros con nombre
// `required` para requerir obligatoriamente ese parámetro.

String saludarPersona({ required String nombre, String? mensaje }) {
  return '$nombre : ${mensaje ?? ''}';
}