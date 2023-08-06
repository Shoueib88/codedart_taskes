import 'dart:io';

void main(List<String> args) {
  print('welcome to program');
  print('*************************');
  /** >>>> fist question */
  // names();
  /** >>>> second question */
  List a = [5, 4, 8, 9, 23, 47];
  a.toString();
  separated(a);
  print('*************************');
}

/** >>>>>> first question
 * names() {
  List y = [];
  while (true) {
    String x = stdin.readLineSync()!;

    if (x == '0')
      break;
    else {
      y.add(x);
      print('enter anther value');
      print('*************************');
    }
  }
  print(y);
}
 */
//>>>>>>>>> second question
separated(dynamic x) {
  String b;
  var a;
  List c = [];
  for (var i in x) {
    b = "${"'$i'"}";
    c.add(b);
  }
  print(c);
}
