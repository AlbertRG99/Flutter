void main() {

  print( saludarTodos() );
  print( saludarUno() );
  print( 'Suma: ${sumarDosNumeros(10, 20)}' );
  print( 'Suma: ${sumarDosNumerosOpcional(10)}' );

}

// Función tradicional
String saludarTodos() {
  return 'Hola a todo el mundo';
}

int sumarDosNumeros(int a, int b) {
  return a + b;
}
// Argumentos opcionales
int sumarDosNumerosOpcional(int a, [int b=0]) {
  return a+b;
}

// Funciones flecha
String saludarUno () => "Hola solo a ti";

int sumarDosNumerosFlecha (int a, int b) => a+b;