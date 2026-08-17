// Intentar no usar porque es cualquier tipop de dato (como Python)
// Dynamic es NULL por defecto.

void main() {

  // a menos que requieras const, usa final
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String> ['ditto/front.png', 'ditto/back.png'];

  // dynamic == null
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;
  errorMessage = null;
  

  print(
    // string multilínea con 3 comillas dobles
    """
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
    """
  );

}