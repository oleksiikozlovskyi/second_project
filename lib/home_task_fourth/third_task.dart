void main() {
  Fish fish = Fish();
  Duck duck = Duck();

  fish.swim();
  duck.swim();
}

mixin Swimming {
  void swim() {
    print('Плаває');
  }
}

class Fish with Swimming {
  @override
  void swim() {
    print('Риба плаває');
  }

}

class Duck with Swimming {
  @override
  void swim() {
    print('Качка плаває');
  }

}