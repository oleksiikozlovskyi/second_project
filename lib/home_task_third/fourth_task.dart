import 'package:collection/collection.dart';

void main() {
  Map<String, int> students = {
    'Оля': 85,
    'Максим': 90,
    'Вася': 90,
    'Петя': 100,
    'Маша': 85
  };

  var grouped = groupBy(students.entries, (item) => item.value);

  grouped.forEach((key, value) {
    var std = value.map((item) => item.key).toList();
    print('$key: $std');
  });
}
