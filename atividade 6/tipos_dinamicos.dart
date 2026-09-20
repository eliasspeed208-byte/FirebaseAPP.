// Arquivo: tipos_dinamicos.dart
// Comparação entre inferência de tipo (final) e tipo forçado (dynamic) em Dart.

void main() {
  // 'final' SEM tipo explícito → o Dart INFERE o tipo automaticamente.
  // Como o valor é uma String, o tipo de 'a' será String.
  // ✅ Vantagem: o compilador conhece o tipo e valida tudo em tempo de compilação.
  final a = "dinâmica";         // tipo inferido: String ✅

  // 'final dynamic' FORÇA o tipo a ser dynamic, ignorando a inferência.
  // O compilador NÃO sabe o tipo real do valor.
  // ❌ Desvantagem: erros só aparecem em tempo de execução, sem autocomplete na IDE.
  final dynamic b = "dinâmica"; // tipo forçado: dynamic ❌

  // 'a' é String → o método toUpperCase() é verificado em tempo de COMPILAÇÃO.
  // Se estivesse errado, o próprio compilador reclamaria antes de rodar.
  print(a.toUpperCase());       // Saída: DINÂMICA

  // 'b' é dynamic → o método toUpperCase() só é verificado em tempo de EXECUÇÃO.
  // Aqui funciona porque o valor realmente é uma String, mas nada garante isso.
  print(b.toUpperCase());       // Saída: DINÂMICA
}