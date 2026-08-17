// Los mixins son muy utilizados solo en Dart
// Es un tipo de herencia múltiple

// solo lo que todos los animales tienen en común
abstract class Animal {}

// solo características específicas de los mamíferos
abstract class Mamifero extends Animal {}
// solo características específicas de las aves
abstract class Ave extends Animal {}
// solo características específicas de los peces 
abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print('Estoy volando');
}
abstract class Caminante {
  void caminar() => print('Estoy caminando');
}
abstract class Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}


void main() {

  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();

}