import 'dart:io';

void main() {
  stdout.write('Введіть число: ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Нічого не введено');
    return;
  }

  int? bal = int.tryParse(input);
  if (bal == null) {
    print('Введено не число');
    return;
  }

  String result = 'Оцінка ';
  if (bal >= 90) {
    result += 'A';
  } else if (bal >= 80) {
    result += 'B';
  } else if (bal >= 70) {
    result += 'C';
  } else if (bal >= 60) {
    result += 'D';
  } else {
    result += 'F';
  }

  stdout.write(result);
}
