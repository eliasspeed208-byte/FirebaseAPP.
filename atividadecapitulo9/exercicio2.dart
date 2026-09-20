void main() {
  final a = {1, 2, 3, 4, 5};
  final b = {4, 5, 6, 7, 8};

  // União
  final uniao = a.union(b);
  print('União: $uniao'); // > {1, 2, 3, 4, 5, 6, 7, 8}

  // Interseção
  final intersecao = a.intersection(b);
  print('Interseção: $intersecao'); // > {4, 5}

  // Diferença (elementos de A que não estão em B)
  final diferenca = a.difference(b);
  print('Diferença (A - B): $diferenca'); // > {1, 2, 3}

  // Diferença simétrica (elementos que estão em apenas um dos conjuntos)
  final difSimetrica = a.difference(b).union(b.difference(a));
  print('Diferença simétrica: $difSimetrica'); // > {1, 2, 3, 6, 7, 8}
}