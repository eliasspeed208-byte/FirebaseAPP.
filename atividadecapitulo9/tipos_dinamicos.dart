void main() {
  final a = "dinâmica";         // tipo inferido: String ✅
  final dynamic b = "dinâmica"; // tipo forçado: dynamic ❌

  print(a.toUpperCase());
  print(b.toUpperCase());
}
