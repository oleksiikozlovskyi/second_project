import 'dart:io';

void main() {
  print('Факторіал числа');
  stdout.write('Введіть число (більше 0): ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Нічого не введено');
    return;
  }

  int? number = int.tryParse(input);

  if (number == null || number <= 0) {
    print('Потрібно ввести число більше 0');
    return;
  }

  int factorial = 1;

  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }
  print(factorial);
}