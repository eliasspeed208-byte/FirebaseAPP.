void main() {
  // Cria o conjunto A com os valores de 1 até 5.
  final a = {1, 2, 3, 4, 5};

  // Cria o conjunto B com os valores de 4 até 8.
  final b = {4, 5, 6, 7, 8};

  // União:
  // Junta todos os elementos dos conjuntos A e B.
  // Os valores repetidos aparecem apenas uma vez.
  final uniao = a.union(b);

  // Exibe o resultado da união no terminal.
  print('União: $uniao');
  // Resultado: {1, 2, 3, 4, 5, 6, 7, 8}


  // Interseção:
  // Retorna somente os elementos que existem
  // nos dois conjuntos ao mesmo tempo.
  final intersecao = a.intersection(b);

  // Exibe o resultado da interseção no terminal.
  print('Interseção: $intersecao');
  // Resultado: {4, 5}


  // Diferença:
  // Retorna os elementos que estão no conjunto A,
  // mas não estão no conjunto B.
  final diferenca = a.difference(b);

  // Exibe o resultado da diferença A - B.
  print('Diferença (A - B): $diferenca');
  // Resultado: {1, 2, 3}


  // Diferença simétrica:
  // Retorna os elementos que estão em apenas um dos conjuntos.
  // Primeiro pegamos A - B e depois B - A.
  // Em seguida, unimos os dois resultados.
  final difSimetrica = a.difference(b).union(b.difference(a));

  // Exibe o resultado da diferença simétrica.
  print('Diferença simétrica: $difSimetrica');
  // Resultado: {1, 2, 3, 6, 7, 8}
}