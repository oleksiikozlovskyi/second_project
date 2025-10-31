import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int number = random.nextInt(100) + 1;
  int? player;

  print('Гра "Вгадай число"');
  print('Вгадай число від 1 до 100');

  while (player != number) {
    stdout.write('Введи число: ');
    String? input = stdin.readLineSync();
    
    if (input == null || input.isEmpty) {
      print('Нічого не введено');
      continue;
    }

    player = int.tryParse(input);

    if (player == null) {
      print('Введено не число');
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
    print(result);
  }
}