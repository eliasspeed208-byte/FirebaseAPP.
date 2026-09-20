// Classe que representa um programador.
class Programador implements Comparable<Programador> {
  // Atributo que armazena o nome do programador.
  final String nome;

  // Atributo que armazena a idade do programador.
  final int idade;

  // Construtor da classe Programador.
  Programador(this.nome, this.idade);

  // O método compareTo() define como os objetos serão comparados.
  // Neste caso, a comparação será feita pela idade.
  @override
  int compareTo(Programador outro) {
    return idade.compareTo(outro.idade);
  }

  // O método toString() define como cada objeto será exibido
  // quando utilizarmos o comando print().
  @override
  String toString() {
    return '$nome - $idade anos';
  }
}

// Função principal do programa.
void main() {
  // Cria uma lista contendo quatro objetos da classe Programador.
  final programadores = [
    Programador('Rafael', 30),
    Programador('Juliana', 25),
    Programador('João', 35),
    Programador('Maria', 28),
  ];

  // O método sort() organiza a lista.
  // Como a classe possui o método compareTo(), a ordenação
  // será realizada de acordo com a idade dos programadores.
  programadores.sort();

  // Exibe no terminal a lista de programadores já ordenada.
  print(programadores);
}