void main() {

  // Imagina que esto es el resultado de una llamada a una API
  // Serializada
  final Map<String, dynamic> rawJSON = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  //final ironman = Hero(
  //  isAlive: rawJSON['isAlive'] ?? 'Not found',
  //  power: 'Money',
  //  name: 'Tony Stark'
  //);

  // Se deserializa en el constructor
  final ironman = Hero.fromJSON( rawJSON );

  print(ironman);

}

class Hero {

  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  // Esto toma la query de entrada y la deserializa
  Hero.fromJSON( Map<String, dynamic> json )
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, ${ isAlive ? 'Yes':'Nope' }';
  }

}