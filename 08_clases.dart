void main() {

  final wolverine = new Hero('Logan', 'Regeneración');
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {

  String name;
  String power;

  // Constructor tipo 1
  Hero(this.name, this.power);

  // Constructor tipo 2
  //Hero(String name, String power):
  //  this.name = name,
  //  this.power = power;
  
}