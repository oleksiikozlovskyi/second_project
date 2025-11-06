void main() {
  Map<String, int> students = {'Оля': 85, 'Максим': 90};
  students['Вася'] = 76;
  students['Оля'] = 100;
  students.remove('Максим');
  int sum = 0;
  students.forEach((key, value) {
    print('$key: $value');
    sum += value;
  });
  print('середня оцінка: ${(sum/students.length).toStringAsFixed(2)}');
}
