// Es el equivalente a una interfaz

void main() {

  final PlantaEnergia = PlantaEnergia();

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

  void consumoEnergia( double cantidad );

}