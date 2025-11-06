void main() {
  Set<int> set_a = {1, 3, 5, 7};
  Set<int> set_b = {3, 5, 8, 10};

  Set<int> union_set = set_a.union(set_b);
  Set<int> intersection_set = set_a.intersection(set_b);
  Set<int> diff_set = set_a.difference(set_b);

  print(set_a);
  print(set_b);
  print("об'єднання: $union_set");
  print('перетин: $intersection_set');
  print('різниця: $diff_set');
}
