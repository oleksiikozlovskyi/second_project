void main() {
  List<String> arr = [
    'Харків',
    'Київ',
    'Львів',
    'Одеса',
    'Дніпро',
    'Вінниця',
    'Полтава',
    'Чернівці',
    'Запоріжжя',
    'Херсон'
  ];
  arr.add('Ужгород');
  arr.remove('Чернівці');
  arr.sort();
  List<String> upper_arr = arr.map((item) => item.toUpperCase()).toList();
  print(arr);
  print(upper_arr);
}
