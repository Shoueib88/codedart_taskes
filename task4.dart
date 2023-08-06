import 'dart:collection';
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /**
   * this program calculate the Area of a circle and
   *  calculate the Area and volume of a sphere based on its radius.
   */
  print('');
  print('_________welcome to program______________');
  print('');
  print('enter a value of radius');
  double r = double.parse(stdin.readLineSync()!);
  Circle circle = Circle(radius2: r);
  print('-------------------');
  print(circle.shape);
  print('');
  print(circle.towd);
  print('');
  print('Area of the circle : ${circle.AreaOfCircle()}');
  print('');
  print('-------------------');
  Sphere sphere = Sphere(radius3: r);
  print('-------------------');
  print(sphere.shape);
  print('');
  print(sphere.thrwd);
  print('');
  print('Area of the Sphere : ${sphere.AreaOfSphere()}');
  print('');
  print('Valome of the Sphere : ${sphere.ValomeOfSphere()}');
  print('');
  print('-------------------');
}

class Shape {
  late String shape;
  double? radius;
  Shape({required double? radius1}) {
    this.radius = radius1;
  }
}

abstract class TwoDimensionalShape extends Shape {
  TwoDimensionalShape({required double? radius2}) : super(radius1: radius2) {
    this.radius = radius2;
  }
  var towd = 'calculating Area of the 2D shape...';
  AreaOfCircle() {
    return pi * pow(2, radius!);
  }
}

abstract class ThreeDimensionalShape extends Shape {
  ThreeDimensionalShape({required double? r3}) : super(radius1: r3) {
    this.radius = r3;
  }
  var thrwd = 'calculating Area and Valome of the 3D shape...';
  AreaOfSphere() {}

  ValomeOfSphere() {}
}

class Circle implements TwoDimensionalShape {
  @override
  double? radius;
  Circle({required double? radius2}) {
    this.radius = radius2;
  }

  @override
  String shape = 'calculating Area of the shape...';

  @override
  var towd = 'calculating Area of the 2D shape...';

  @override
  AreaOfCircle() {
    return pi * pow(radius!, 2);
  }
}

class Sphere implements ThreeDimensionalShape {
  @override
  double? radius;
  Sphere({required double? radius3}) {
    this.radius = radius3;
  }

  @override
  String shape = 'calculating Area of the shape...';

  @override
  String thrwd = 'calculating Area and Valome of the 3D shape...';

  @override
  AreaOfSphere() {
    return 4 * pi * pow(radius!, 2);
  }

  @override
  ValomeOfSphere() {
    return (4 / 3) * pi * pow(radius!, 3);
  }
}
