import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Digite o valor do raio: ');
  final entrada = stdin.readLineSync();
  final raio = double.tryParse(entrada ?? '');

  if (raio == null || raio < 0) {
    print('Valor inválido! Digite um número positivo.');
    return;
  }

  final circunferencia = 2 * pi * raio;
  print('A circunferência do círculo é: ${circunferencia.toStringAsFixed(2)}');
}