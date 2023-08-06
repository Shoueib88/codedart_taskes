import 'dart:io';

void main() {
  print('_____ this program can know kind of the animal _____');
  print('');
  stdout.write('(required)' + '\tname : ');
  String n = stdin.readLineSync()!;
  stdout.write('\n(true/false)' + '\t(required)' + '\thave_wings : ');
  String? hw = stdin.readLineSync();
  stdout.write('\n(true/false)' + '\t(required)' + '\thave_legs : ');
  String? hl = stdin.readLineSync();
  Animal animal = Animal();
  animal.kinding(names: n, have_wings: hw, have_legs: hl);
  print('');
}

class Animal {
  String? name;
  String? have_wing;
  String? have_leg;

  Animal({String? name, String? have_wings, String? have_legs}) {}

  kinding(
      {required String? names,
      required String? have_wings,
      required String? have_legs}) {
    this.name = names;
    this.have_wing = have_wings;
    this.have_leg = have_legs;

    if (have_wings == 'true' && have_legs == 'false') {
      print('');
      print('- animal name : ${this.name}');
      print('');
      print('- this animal can fly');
      print('');
      print('- kind of animal is : bird');
    } else if (have_legs == 'true' && have_wings == 'false') {
      print('');
      print('- animal name : ${this.name}');
      print('');
      print('- this animal can walk');
      print('');
      print('- kind of animal is : wild ');
    } else if (have_legs == 'false' && have_wings == 'false') {
      print('');
      print('- animal name : ${this.name}');
      print('');
      print('- this animal can swim');
      print('');
      print('- kind of animal is : Aquatic animal ');
    } else {
      print('');
      print('invaild');
    }
  }
}
