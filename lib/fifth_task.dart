import 'dart:io';

void main() {
  print('Калькулятор');
  stdout.write('Введіть перше число: ');
  String? input_1 = stdin.readLineSync();

  if (input_1 == null || input_1.isEmpty) {
    print('Нічого не введено');
    return;
  }

  double? num_1 = double.tryParse(input_1);

  if (num_1 == null) {
    print('Потрібно ввести число');
    return;
  }

  stdout.write('Введіть друге число: ');
  String? input_2 = stdin.readLineSync();

  if (input_2 == null || input_2.isEmpty) {
    print('Нічого не введено');
    return;
  }

  double? num_2 = double.tryParse(input_2);

  if (num_2 == null) {
    print('Потрібно ввести число');
    return;
  }
  
  stdout.write('Оберіть операцію (+, -, *, /): ');
  String? choice = stdin.readLineSync();

  try {
    String result = 'Результат: ';
    double? res;
    switch(choice) {
      case '+':
        res = add(num_1, num_2);
        result += '$num_1 + $num_2 = $res';
        break;
      case '-':
        res = subtract(num_1, num_2);
        result += '$num_1 - $num_2 = $res';
        break;
      case '*':
        res = multiply(num_1, num_2);
        result += '$num_1 * $num_2 = $res';
        break;
      case '/':
        res = divide(num_1, num_2);
        result += '$num_1 / $num_2 = $res';
        break;
      default:
        result = 'Помилка: невідома операція';
    }

    print(result);
  } on ArgumentError catch (e) {
    print(e);
  }
}

double add(double a, double b) {
  return a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  if (b == 0) {
    throw ArgumentError('Ділення на 0 неможливе!');
  }
  return a / b;
}