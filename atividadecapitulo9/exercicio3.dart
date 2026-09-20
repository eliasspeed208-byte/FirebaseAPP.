void main() {
  final lista = [10, 20, 30, 40, 50];
  final palavras = ['dart', 'java', 'python', 'kotlin'];

  // contains
  print('contains(30): ${lista.contains(30)}');

  // elementAt
  print('elementAt(2): ${lista.elementAt(2)}');

  // firstWhere
  print('firstWhere(> 25): ${lista.firstWhere((e) => e > 25)}');

  // lastWhere
  print('lastWhere(< 45): ${lista.lastWhere((e) => e < 45)}');

  // expand
  final expandido = lista.expand((e) => [e, e * 2]);
  print('expand: ${expandido.toList()}');

  // take
  print('take(3): ${lista.take(3).toList()}');

  // skip
  print('skip(2): ${lista.skip(2).toList()}');

  // reduce
  final soma = lista.reduce((a, b) => a + b);
  print('reduce (soma): $soma');

  // fold
  final somaComInicial = lista.fold(100, (a, b) => a + b);
  print('fold (soma + 100): $somaComInicial');

  // join
  print('join: ${palavras.join(', ')}');

  // every
  print('every(> 5): ${lista.every((e) => e > 5)}');
  print('every(> 20): ${lista.every((e) => e > 20)}');
}