class ReversibleIterator<T> {
  final List<T> _items;
  int _index = -1;

  ReversibleIterator(this._items);

  // Avança para o próximo elemento
  bool moveNext() {
    if (_index < _items.length - 1) {
      _index++;
      return true;
    }
    return false;
  }

  // Retrocede para o elemento anterior
  bool movePrevious() {
    if (_index > 0) {
      _index--;
      return true;
    }
    return false;
  }

  // Retorna o elemento atual
  T get current => _items[_index];

  // Verifica se há próximo
  bool get hasNext => _index < _items.length - 1;

  // Verifica se há anterior
  bool get hasPrevious => _index > 0;
}

void main() {
  final it = ReversibleIterator(['a', 'b', 'c', 'd']);

  print('--- Iterando para frente ---');
  while (it.moveNext()) {
    print('Frente: ${it.current}');
  }

  print('--- Iterando para trás ---');
  while (it.movePrevious()) {
    print('Trás: ${it.current}');
  }
}