// Exercise #3 - Factory implementations
// Exercise #4 - Interface implementation
import 'dart:math';

abstract class Shape {
  // Option 2 for factory: factory constructor
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Cannot create $type';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class CircleMock implements Circle {
  num area;
  num radius;
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

// Option 1 for factory: top-level function
Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Cannot create $type';
}

main() {
  try {
    final circle = Shape('circle');
    final square = Shape('square');
    print(circle.area);
    print(square.area);
  } catch (error) {
    print(error);
  }
}
