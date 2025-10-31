import 'dart:io';

void main() {
  stdout.write('Введіть число (більше 0): ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    stdout.writeln('Нічого не введено');
    return;
  }

  int? number = int.tryParse(input);

  if (number == null || number <= 0) {
    stdout.writeln('Потрібно ввести число більше 0');
    return;
  }

  int factorial = 1;

  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }
  stdout.writeln(factorial);
}