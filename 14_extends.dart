void main() {

  final PlantaEnergia = PlantaViento( energiaInicial: 100);

}

// enumerado
enum tipoPlanta { nuclear, viento, agua }

abstract class PlantaEnergia {

  double energiaRestante;
  tipoPlanta tipo; // nuclear, viento, agua
  
  PlantaEnergia({
    required this.energiaRestante,
    required this.tipo
  });

  void consumoEnergia( double cantidad ); // Aquí no se implementa nada, solo se define
}

// EXTENDS (heredar) o IMPLEMENTS

class PlantaViento extends PlantaEnergia {

  PlantaViento({ required double energiaInicial })
    : super(energiaRestante: energiaInicial, tipo: tipoPlanta.viento); // super para acceder a la interfaz

  void consumoEnergia( double cantidad ) {
    energiaRestante -= cantidad;
  }

}