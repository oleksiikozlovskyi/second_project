void main() {
  SportsClub club = SportsClub();
  club.addSport(Soccer());
  club.addSport(Basketball());

  club.playAll();
}

abstract class Playable {
  void play();
}

class Soccer implements Playable {
  @override
  void play() {
    print('Граємо у футбол');
  }
}

class Basketball implements Playable {
  @override
  void play() {
    print('Граємо у баскетбол');
  }
}

class SportsClub {
  final List<Playable> _sports = [];

  void addSport(Playable sport) {
    _sports.add(sport);
  }

  void playAll() {
    for (Playable sport in _sports) {
      sport.play();
    }
  }
}
