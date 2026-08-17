void main() {

  final Map<String, dynamic> pokemon = {
    'name' : 'Dito',
    'hp' : 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': { // Map dentro de otro Map
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };


  print(pokemon);
  print('Name: ${ pokemon['name'] }');  // búsqueda por key
  print('Back: ${ pokemon['sprites'][1] }');
  print('Front: ${ pokemon['sprites'][2] }');
}