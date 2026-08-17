void main() {

  final wolverine = new Hero(name: 'Logan', power: 'Regeneración');
  
  print(wolverine.toString());
  //print(wolverine.name);
  //print(wolverine.power);
}

class Hero {

  String name;
  String power;

  Hero({
    required this.name, 
    required this.power
    });

  // Cambiar el comportamiento del método toString por defecto
  @override
  String toString() {
    return '$name - $power';
  }
  
}