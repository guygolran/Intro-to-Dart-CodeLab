// Exercise #1 - simple class manipulations (private variables, toString method)
class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;

  Bicycle(int cadence, int gear) {
    this.cadence = cadence;
    this.gear = gear;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';

  int get speed => _speed;

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}

void main() {
  var bike = new Bicycle(2, 1);
  print(bike);
}
