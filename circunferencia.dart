import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Digite o raio do círculo: ');

  double raio = double.parse(stdin.readLineSync()!);

  double circunferencia = 2 * pi * raio;

  print('A circunferência do círculo é: $circunferencia');
}