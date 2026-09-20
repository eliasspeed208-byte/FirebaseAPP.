void main() {
  // Cria uma lista de números inteiros.
  final lista = [10, 20, 30, 40, 50];

  // Cria uma lista contendo nomes de linguagens de programação.
  final palavras = ['dart', 'java', 'python', 'kotlin'];

  // contains verifica se o elemento 30 existe na lista.
  print('contains(30): ${lista.contains(30)}');

  // elementAt acessa um elemento pelo índice.
  // O índice 2 corresponde ao terceiro elemento da lista.
  print('elementAt(2): ${lista.elementAt(2)}');

  // firstWhere procura o primeiro elemento
  // que seja maior que 25.
  print('firstWhere(> 25): ${lista.firstWhere((e) => e > 25)}');

  // lastWhere procura o último elemento
  // que seja menor que 45.
  print('lastWhere(< 45): ${lista.lastWhere((e) => e < 45)}');

  // expand cria novos elementos a partir de cada elemento.
  // Neste caso, adiciona o número e o seu dobro.
  final expandido = lista.expand((e) => [e, e * 2]);

  // Converte o resultado para uma lista e exibe.
  print('expand: ${expandido.toList()}');

  // take pega os primeiros 3 elementos da lista.
  print('take(3): ${lista.take(3).toList()}');

  // skip ignora os dois primeiros elementos
  // e retorna os elementos restantes.
  print('skip(2): ${lista.skip(2).toList()}');

  // reduce combina todos os elementos da lista.
  // Aqui, os valores são somados.
  final soma = lista.reduce((a, b) => a + b);

  // Exibe o resultado da soma.
  print('reduce (soma): $soma');

  // fold funciona de forma semelhante ao reduce,
  // mas permite definir um valor inicial.
  // Neste caso, a soma começa em 100.
  final somaComInicial = lista.fold(100, (a, b) => a + b);

  // Exibe o resultado da soma mais o valor inicial.
  print('fold (soma + 100): $somaComInicial');

  // join transforma os elementos da lista em uma única string,
  // utilizando vírgula e espaço como separadores.
  print('join: ${palavras.join(', ')}');

  // every verifica se todos os elementos atendem à condição.
  // Aqui verifica se todos são maiores que 5.
  print('every(> 5): ${lista.every((e) => e > 5)}');

  // Verifica se todos os elementos são maiores que 20.
  print('every(> 20): ${lista.every((e) => e > 20)}');
}