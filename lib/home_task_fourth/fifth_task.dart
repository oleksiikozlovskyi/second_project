import 'package:equatable/equatable.dart';

void main() {
  Coordinate a = Coordinate(24.34, 54.26);
  Coordinate b = Coordinate(24.34, 54.26);
  Coordinate c = Coordinate(34.55, 48.16);

  print(a);
  print('a == b: ${a == b}');
  print('a == c: ${a == c}');

  Coordinate2 x = Coordinate2(24.34, 54.26);
  Coordinate2 y = Coordinate2(24.34, 54.26);
  Coordinate2 z = Coordinate2(34.55, 48.16);

  print(x);
  print('x == y: ${x == y}');
  print('x == z: ${x == z}');
}

class Coordinate {
  double latitude;
  double longitude;

  Coordinate(this.latitude, this.longitude);

  @override
  String toString() {
    return 'Coordinate(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Coordinate &&
          latitude == other.latitude &&
          longitude == other.longitude;

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}

class Coordinate2 extends Equatable {
  final double latitude;
  final double longitude;

  Coordinate2(this.latitude, this.longitude);

  @override
  String toString() {
    return 'Coordinate2(latitude: $latitude, longitude: $longitude)';
  }

  @override
  List<Object?> get props => [latitude, longitude];
}
