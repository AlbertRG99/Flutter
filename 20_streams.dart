void main() {

  emitNumbers().listen( (value){
    print('Stream vale: $value');
  });

}

Stream<int> emitNumbers() {

  // Va a empezar a emitir números cada segundo
  return Stream.periodic( const Duration(seconds: 1), (value){
    print('desde periodic $value');
    return value;
  }).take(5);
}