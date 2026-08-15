void main() {

  final numbers = [1, 2, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10];

  print('Lista original: ${numbers}');
  print('Cantidad elementos: ${numbers.length}');
  print('Primer elemento: ${numbers[0]}');
  print('Último elemento: ${numbers.last}');      // hay que evaluar previamente si hay elementos
  print('Inverso iterable: ${numbers.reversed}');          // invertir lista (retorna un interable!)
  print('Inverso lista: ${numbers.reversed.toList()}'); // retorna lista límpia
  print('Inverso set: ${numbers.reversed.toSet()}'); // retorna set

  final numerosMayoresQue5 = numbers.where( (num) {
    return num > 5; // true
  } );

  print('Números mayores a 5: ${numerosMayoresQue5.toList()}');
}