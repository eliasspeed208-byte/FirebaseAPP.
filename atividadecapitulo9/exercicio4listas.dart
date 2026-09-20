// Classe que representa um iterador para percorrer uma lista.
class MeuIterador<T> implements Iterator<T> {
  // Lista que será percorrida.
  final List<T> lista;

  // Guarda a posição atual do iterador.
  int _indice = -1;

  // Guarda o elemento atual.
  late T _atual;

  // Indica se existe um elemento atual.
  bool _possuiAtual = false;

  // Construtor que recebe a lista.
  MeuIterador(this.lista);

  // Retorna o elemento atual.
  @override
  T get current {
    if (!_possuiAtual) {
      throw StateError('Não existe elemento atual.');
    }

    return _atual;
  }

  // Avança para o próximo elemento.
  @override
  bool moveNext() {
    // Verifica se existe um próximo elemento.
    if (_indice + 1 >= lista.length) {
      return false;
    }

    // Avança uma posição.
    _indice++;

    // Atualiza o elemento atual.
    _atual = lista[_indice];

    // Informa que existe um elemento atual.
    _possuiAtual = true;

    return true;
  }

  // Volta para o elemento anterior.
  bool movePrevious() {
    // Verifica se existe um elemento anterior.
    if (_indice - 1 < 0) {
      return false;
    }

    // Volta uma posição.
    _indice--;

    // Atualiza o elemento atual.
    _atual = lista[_indice];

    // Mantém o elemento atual válido.
    _possuiAtual = true;

    return true;
  }
}

// Função principal do programa.
void main() {
  // Cria uma lista de números.
  final lista = [10, 20, 30, 40, 50];

  // Cria o iterador.
  final iterador = MeuIterador<int>(lista);

  // Percorre a lista utilizando moveNext().
  print('Percorrendo com moveNext():');

  while (iterador.moveNext()) {
    print(iterador.current);
  }

  // Cria outro iterador para demonstrar o percurso inverso.
  final iteradorInverso = MeuIterador<int>(lista);

  // Avança até o último elemento.
  while (iteradorInverso.moveNext()) {}

  // Mostra o último elemento.
  print('\nPercorrendo de trás para frente com movePrevious():');
  print(iteradorInverso.current);

  // Volta pelos elementos anteriores.
  while (iteradorInverso.movePrevious()) {
    print(iteradorInverso.current);
  }
}
  