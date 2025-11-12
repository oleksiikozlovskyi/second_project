void main() {
  Animal cat = Animal('Кіт', 5);
  Animal dog = Animal.newborn('Собака');

  cat.showInfo();
  dog.showInfo();

  print('${cat.species} дорослий? ${cat.isAdult() ? "Так" : "Ні"}');
  print('${dog.species} дорослий? ${dog.isAdult() ? "Так" : "Ні"}');
}

class Animal {
  String species;
  int age;

  Animal(this.species, this.age);

  Animal.newborn(this.species) : age = 0;

  bool isAdult() => age > 2;

  void showInfo() {
    print('Вид $species, вік $age років');
  }
}