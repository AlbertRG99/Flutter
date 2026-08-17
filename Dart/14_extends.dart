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

// EXTENDS (heredar)

// Extendida: PlantaViento
class PlantaViento extends PlantaEnergia {

  PlantaViento({ required double energiaInicial })
    : super(energiaRestante: energiaInicial, tipo: tipoPlanta.viento); // super para acceder a la interfaz

  void consumoEnergia( double cantidad ) {
    energiaRestante -= cantidad;
  }

}
// Extendida: PlantaAgua
class PlantaAgua extends PlantaEnergia {

  PlantaAgua({ required double energiaInicial })
    : super(energiaRestante: energiaInicial, tipo: tipoPlanta.agua); // super para acceder a la interfaz

  void consumoEnergia( double cantidad ) {
    energiaRestante -= cantidad;
  }

}

/*
    PlantaEnergía 
   (interfaz base)
      |         |
      |         |
PlantaAgua    PlantaViento
(clase ext)   (clase ext)
 */