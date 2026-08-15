void main() {

  // a menos que requieras const, usa final
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String> ['ditto/front.png', 'ditto/back.png'];

  print(
    // string multilínea con 3 comillas dobles
    """
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    """
  );

}