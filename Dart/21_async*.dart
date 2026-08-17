// Equivalente a la función generadora de Python (yield)
// 'async': Retorna Future de un solo elemento
// 'async*': Retorna Stream de múltiples elementos

void main() {

  emitirNumero().listen( (int value){
    print('Valor de stream: $value');
  });

}

Stream<int> emitirNumero() async* {
  final valoresAEmitir = [1,2,3,4,5];
  for (int i in valoresAEmitir){
    await Future.delayed(const Duration(seconds: 1)); // intervalos de 1s
    yield i;
  }
}