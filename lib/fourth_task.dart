import 'dart:io';

void main() {
  print('Конвертер температур');
  stdout.write('Введіть температуру: ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Нічого не введено');
    return;
  }

  double? temp = double.tryParse(input);

  if (temp == null) {
    print('Потрібно ввести число');
    return;
  }

  print('1 - з Цельсія у Фаренгейт');
  print('2 - з Фаренгейта у Цельсій');
  stdout.write('Оберіть напрямок конвертації: ');
  String? choice = stdin.readLineSync();

  String result;
  if (choice == '1') {
    double res = celsiusToFahrenheit(temp);
    result = '$temp\u00B0C = ${res.toStringAsFixed(2)}\u00B0F';
  } else if (choice == '2') {
    double res = fahrenheitToCelsius(temp);
    result = '$temp\u00B0F = ${res.toStringAsFixed(2)}\u00B0C';
  } else {
    result = 'Потрібно ввести 1 або 2';
  }

  print(result);
}

celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}