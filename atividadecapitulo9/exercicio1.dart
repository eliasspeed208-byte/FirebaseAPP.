class Programador implements Comparable<Programador> {
  final String nome;
  final int idade;

  Programador(this.nome, this.idade);

  @override
  int compareTo(Programador other) {
    // Ordena por idade (do mais novo para o mais velho)
    return this.idade.compareTo(other.idade);
  }

  @override
  String toString() => 'Programador($nome, $idade)';
}

void main() {
  final programadores = [
    Programador('Rafael', 30),
    Programador('Juliana', 25),
    Programador('João', 35),
    Programador('Maria', 28),
  ];

  programadores.sort();
  print(programadores);
  // > [Programador(Juliana, 25), Programador(Maria, 28), Programador(Rafael, 30), Programador(João, 35)]
}