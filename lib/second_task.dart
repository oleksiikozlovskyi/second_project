import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int number = random.nextInt(100) + 1;
  int? player;

  stdout.writeln('Гра "Вгадай число"');
  stdout.writeln('Вгадай число від 1 до 100');

  while (player != number) {
    stdout.write('Введи число: ');
    String? input = stdin.readLineSync();
    
    if (input == null || input.isEmpty) {
      stdout.writeln('Нічого не введено');
      continue;
    }

    player = int.tryParse(input);

    if (player == null) {
      stdout.writeln('Введено не число');
      continue;
    }

    String result;
    if (player > number) {
      result = 'Загадане число менше';
    } else if (player < number) {
      result = 'Загадане число більше';
    } else {
      result = 'Ти вгадав число';
    }
    stdout.writeln(result);
  }
}