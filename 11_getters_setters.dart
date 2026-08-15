void main() {

  final miCuadrado = Cuadrado( lado: 10 );

  miCuadrado._lado = -5;

  print('Area: ${miCuadrado.calcularArea()}');
}

class Cuadrado {
  double _lado;  // lado * lado

  Cuadrado({ required double lado })
    : this._lado = lado;

  double get area {
    return _lado * _lado;
  }

  set lado (double value) {
    print('estableciendo nuevo valor $value');
    if ( value < 0 ) throw 'el valor debe ser >=0';
  }

  double calcularArea() {
    return _lado * _lado;
  }
}