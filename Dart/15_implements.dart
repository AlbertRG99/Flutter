// Funciona para lo mismo que extends pero cambia la forma de hacerlo

void main() {
  final plantaNuclear = PlantaNuclear(energiaRestante: 1000);

  print(plantaNuclear.energiaRestante);
  print(plantaNuclear.tipo);

  plantaNuclear.consumoEnergia(100);

  print(plantaNuclear.energiaRestante);
}


// Enumerado
enum TipoPlanta { nuclear, viento, agua }


// Interfaz
abstract class PlantaEnergia {
  double energiaRestante;
  final TipoPlanta tipo;

  PlantaEnergia({
    required this.energiaRestante,
    required this.tipo,
  });

  void consumoEnergia(double cantidad);
}


// IMPLEMENTS
class PlantaNuclear implements PlantaEnergia {

  @override
  double energiaRestante;

  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;

  PlantaNuclear({
    required this.energiaRestante,
  });

  @override
  void consumoEnergia(double cantidad) {
    energiaRestante -= cantidad * 0.5;
  }
}