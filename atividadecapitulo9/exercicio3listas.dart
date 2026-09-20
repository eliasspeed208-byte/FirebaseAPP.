void main() {
  // Cria uma lista de números inteiros.
  final lista = [10, 20, 30, 40, 50];

  // Cria uma lista contendo nomes de linguagens de programação.
  final palavras = ['dart', 'java', 'python', 'kotlin'];

  // contains verifica se determinado elemento existe na lista.
  // Neste caso, verifica se o número 30 está presente.
  print('contains(30): ${lista.contains(30)}');

  // elementAt acessa um elemento da lista através do seu índice.
  // O índice começa em 0, portanto o índice 2 corresponde ao número 30.
  print('elementAt(2): ${lista.elementAt(2)}');

  // firstWhere procura o primeiro elemento que atende à condição.
  // Aqui, procura o primeiro número maior que 25.
  print('firstWhere(> 25): ${lista.firstWhere((e) => e > 25)}');

  // lastWhere procura o último elemento que atende à condição.
  // Aqui, procura o último número menor que 45.
  print('lastWhere(< 45): ${lista.lastWhere((e) => e < 45)}');

  // expand cria novos elementos a partir de cada elemento da lista.
  // Para cada número, adiciona o próprio número e seu dobro.
  final expandido = lista.expand((e) => [e, e * 2]);

  // Converte o resultado para uma lista e exibe no terminal.
  print('expand: ${expandido.toList()}');

  // take seleciona os primeiros elementos da lista.
  // Neste caso, seleciona os 3 primeiros.
  print('take(3): ${lista.take(3).toList()}');

  // skip ignora os primeiros elementos da lista.
  // Aqui, ignora os 2 primeiros e mostra os restantes.
  print('skip(2): ${lista.skip(2).toList()}');

  // reduce combina todos os elementos da lista.
  // Neste caso, realiza a soma de todos os números.
  final soma = lista.reduce((a, b) => a + b);

  // Exibe o resultado da soma.
  print('reduce (soma): $soma');

  // fold também combina os elementos da lista,
  // mas permite definir um valor inicial.
  // Neste caso, a soma começa com 100.
  final somaComInicial = lista.fold(100, (a, b) => a + b);

  // Exibe a soma dos elementos mais o valor inicial 100.
  print('fold (soma + 100): $somaComInicial');

  // join junta os elementos da lista em uma única sequência de texto.
  // Os elementos serão separados por vírgula e espaço.
  print('join: ${palavras.join(', ')}');

  // every verifica se todos os elementos da lista
  // atendem a uma determinada condição.
  // Verifica se todos os números são maiores que 5.
  print('every(> 5): ${lista.every((e) => e > 5)}');

  // Verifica se todos os números são maiores que 20.
  print('every(> 20): ${lista.every((e) => e > 20)}');
}