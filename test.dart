void main(List<String> args) {
  print('--------------------------------');
  print('_____ welcame to program_______');
  print('');
}

class User {
  String? name;
}




/***************************************** Q7
 * void main(List<String> args) {
  print('--------------------------------');
  print('_____ welcame to program_______');
  print('');
  var user = ConsoleLogger();
  user.logInfo();
  print('');
  user.logWarning();
  print('');
  user.logError();
}

class Logger {
  logInfo() {
    print('logInfo');
  }

  logWarning() {
    print('processPayment');
  }

  logError() {
    print('logError');
  }
}

class ConsoleLogger extends Logger {
  @override
  logInfo() {
    print(' logInfo ');
  }

  @override
  logWarning() {
    print('not found');
  }

  @override
  logError() {
    print('false');
  }
}

class FileLogger extends Logger {
  @override
  logInfo() {
    print(' logInfo ');
  }

  @override
  logWarning() {
    print('found wrong');
  }

  @override
  logError() {
    print('true');
  }
}
 */

/*************************************** Q6
 * void main(List<String> args) {
  print('--------------------------------');
  print('_____ welcame to program_______');
  print('');
  var user = PayPalGateway();
  user.initiatePayment();
  print('');
  user.processPayment();
  print('');
  user.refundPayment();
}

class Logger  {
  initiatePayment() {
    print('initiatePayment');
  }

  processPayment() {
    print('processPayment');
  }

  refundPayment() {
    print('refundPayment');
  }
}

class PayPalGateway extends Logger  {
  @override
  initiatePayment() {
    print(' initiatePayment ');
  }

  @override
  processPayment() {
    print('processPayment by visa');
  }

  @override
  refundPayment() {
    print('Refund payment');
  }
}

class StripeGateway extends Logger  {
  @override
  initiatePayment() {
    print(' StripeGateway ');
  }

  @override
  processPayment() {
    print('processPayment by visa');
  }

  @override
  refundPayment() {
    print('Refund payment');
  }
}
 */

/******************************************* Q5
 * void main(List<String> args) {
  print('--------------------------------');
  print('_____ welcame to program_______');
  print('');
  var user1 = new MySQLConnection();
  user1.connect();
  print('');
  // user1.disconnect();
  user1.query();
  print('');
  user1.execute();
  print('');
  var user2 = PostgreSQLConnection();
  //user2.connect();
  print('');
  user2.disconnect();
  print('');
  user2.query();
  print('');
  user2.execute();
}

class Logger   {
  connect() {
    print('connect');
  }

  disconnect() {
    print('disconnect');
  }

  query() {
    print('query');
  }

  execute() {
    print('execute');
  }
}

class MySQLConnection implements Logger   {
  @override
  connect() {
    print('user is connect ');
  }

  @override
  disconnect() {
    print('false');
  }

  @override
  execute() {
    print('executing');
  }

  @override
  query() {
    print('vaild');
  }
}

class PostgreSQLConnection implements Logger   {
  @override
  connect() {
    print('false');
  }

  @override
  disconnect() {
    print('user is disconnect');
  }

  @override
  execute() {
    print('not executing');
  }

  @override
  query() {
    print('invaild');
  }
}
 */

/*********************************************** Q4
 * import 'dart:math';

void main(List<String> args) {
  print('--------------------------------');
  print('_____ welcame to program_______');
  print('');
  var rectangle = Rectangle(height1: 5, widht1: 7);
  rectangle.area_of_shape();
  rectangle.primetre_of_shape();
  print('');
  var triangle = Triangle(height2: 7, base: 2, side: 8);
  triangle.area_of_shape();
  triangle.primetre_of_shape();
  print('');
  var circle = Circle(raduis: 7);
  circle.area_of_shape();
  circle.primetre_of_shape();
}

class Shape {
  double? hieght;
  double? width;
  double? side;
  Shape({this.hieght, this.width, this.side}) {}
  area_of_shape() {
    print('areaofshape');
  }

  primetre_of_shape() {
    print('primetreofshape');
  }
}

class Rectangle extends Shape {
  Rectangle({double? height1, double? widht1})
      : super(hieght: height1, width: widht1) {
    print('this shape named Rectangle');
    print('');
  }
  @override
  @override
  area_of_shape() {
    double result = this.hieght! * this.width!;
    print('------------------------');
    print('area_of_Rectangle is : $result');
    print('');
  }

  @override
  primetre_of_shape() {
    double result = 2 * (this.hieght! + this.width!);

    print('primetre_of_Rectangle is : $result');
    print('------------------------');
  }
}

class Triangle extends Shape {
  Triangle({double? height2, double? base, double? side})
      : super(hieght: height2, width: base, side: side) {
    print('this shape named Triangle');
    print('');
  }
  @override
  @override
  area_of_shape() {
    double result = (1 / 2) * (this.hieght! * this.width!);
    print('------------------------');
    print('area_of_Triangle is : $result');
    print('');
  }

  @override
  primetre_of_shape() {
    double result = this.hieght! + this.width! + this.side!;

    print('primetre_of_Triangle is : $result');
    print('------------------------');
  }
}

class Circle extends Shape {
  Circle({double? raduis}) : super(side: raduis) {
    print('this shape named Circle');
    print('');
  }
  @override
  @override
  area_of_shape() {
    double result = pi * pow(this.side!, 2);
    print('------------------------');
    print('area_of_Circle is : $result');
    print('');
  }

  @override
  primetre_of_shape() {
    double result = 2 * pi * this.side!;

    print('primetre_of_Circle is : $result');
    print('------------------------');
  }
}
 */

/************************************************** Q3
 * void main(List<String> args) {
  print('--------------------------------');
  print('_____ welcame to program_______');
  print('--------------------------------');
  var user11 = SavingsAccount(name: 'name1', e_mail: 'e_mail 1');
  print('');
  user11.fun();
  print('--------------------------------');
  var user12 = CheckingAccount(name: 'name2', e_mail: 'e_mail 2');
  print('');
  user12.fun();
  print('');
  print('--------------------------------');
}

abstract class BankAccount {
  late final String name;
  late final String e_mail;
  BankAccount({required this.name, required this.e_mail}) {}
  fun() {}
}

class SavingsAccount implements BankAccount {
  @override
  late String e_mail;

  @override
  late String name;
  SavingsAccount({required this.name, required this.e_mail}) {
    print('user1name : $name');
    print('e_mail :   $e_mail');
  }

  @override
  fun() {
    print('____ calculation for savings accounts _______');
  }
}

class CheckingAccount implements BankAccount {
  @override
  late String e_mail;

  @override
  late String name;
  CheckingAccount({required this.name, required this.e_mail}) {
    print('user1name : $name');
    print('e_mail :   $e_mail');
  }

  @override
  fun() {
    print('________ overdraft protection for checking accounts ________');
  }
}
 */

/************************************************** Q2
 * void main(List<String> args) {
  print('--------------------------------');
  print('_____ welcame to program_______');
  var myManager = Manager(name1: 'Ahmed', age1: 25, salary1: 6000);
  print('--------------------------------');
  myManager.Manager();
  myManager.info_Manager();
  print('');
  var myDeveloper = Developer(name2: 'Amr', age2: 22, salary2: 8000);
  myDeveloper.Developer();
  myDeveloper.info_Developer();
  print('');
  var myDesigner = Designer(name3: 'Ammar', age3: 23, salary3: 9000);
  myDesigner.Designer();
  myDesigner.info_Designer();
  print('');
}

class Employee {
  String? name;
  int age;
  int salary;
  Employee({required this.name, required this.age, required this.salary}) {}
  Manager() {
    print('type of a Employee  is : Manager');
  }

  Developer() {
    print('type of a Employee  is : Developer');
  }

  Designer() {
    print('type of a Employee  is : Designer ');
  }
}

class Manager extends Employee {
  Manager({required String? name1, required int age1, required int salary1})
      : super(name: name1, age: age1, salary: salary1) {}
  info_Manager() {
    print('--------------------------------');
    print('the name of Manager is :${this.name}');
    print('');
    print('the age of Manager is :${this.age}');
    print('');
    print('the salary of Manager is :${this.salary}');
    print('');
    print('---------------------------------');
  }
}

class Developer extends Employee {
  Developer({required String? name2, required int age2, required int salary2})
      : super(name: name2, age: age2, salary: salary2) {}
  info_Developer() {
    print('--------------------------------');
    print('the name of Developer is :${this.name}');
    print('');
    print('the age of Developer is :${this.age}');
    print('');
    print('the salary of Developer is :${this.salary}');
    print('');
    print('---------------------------------');
  }
}

class Designer extends Employee {
  Designer({required String? name3, required int age3, required int salary3})
      : super(name: name3, age: age3, salary: salary3) {}
  info_Designer() {
    print('--------------------------------');
    print('the name of Designer  is :${this.name}');
    print('');
    print('the age of Designer  is :${this.age}');
    print('');
    print('the salary of Designer  is :${this.salary}');
    print('');
    print('---------------------------------');
  }
}
 */


/************************************************** Q1
 * void main(List<String> args) {
  print('--------------------------------');
  print('_____ welcame to program_______');
  var myManager = Manager(name1: 'bmw', age1: '2022', salary1: 2000);
  print('--------------------------------');
  myManager.Manager();
  myManager.info_Manager();
  print('');
  var myDeveloper = Developer(name2: 'marceds', age2: '2021', salary2: 2021);
  myDeveloper.Developer();
  myDeveloper.info_Developer();
  print('');
  var myDesigner  = Designer (name3: 'toyota', age3: '2015', salary3: 2015);
  myDesigner .Designer ();
  myDesigner .info_Designer ();
  print('');
}

class Employee  {
  String? name;
  String? age;
  int? salary;
  Employee ({required this.name, required this.age, required this.salary}) {}
  Manager() {
    print('type of a Employee  is : Manager');
  }

  Developer() {
    print('type of a Employee  is : Developer');
  }

  Designer () {
    print('type of a Employee  is : Designer ');
  }
}

class Manager extends Employee  {
  Manager({required String? name1, required String? age1, required int? salary1})
      : super(name: name1, age: age1, salary: salary1) {}
  info_Manager() {
    print('--------------------------------');
    print('the name of Manager is :${this.name}');
    print('');
    print('the age of Manager is :${this.age}');
    print('');
    print('the salary of Manager is :${this.salary}');
    print('');
    print('---------------------------------');
  }
}

class Developer extends Employee  {
  Developer(
      {required String? name2, required String? age2, required int? salary2})
      : super(name: name2, age: age2, salary: salary2) {}
  info_Developer() {
    print('--------------------------------');
    print('the name of Developer is :${this.name}');
    print('');
    print('the age of Developer is :${this.age}');
    print('');
    print('the salary of Developer is :${this.salary}');
    print('');
    print('---------------------------------');
  }
}

class Designer  extends Employee  {
  Designer ({required String? name3, required String? age3, required int? salary3})
      : super(name: name3, age: age3, salary: salary3) {}
  info_Designer () {
    print('--------------------------------');
    print('the name of Designer  is :${this.name}');
    print('');
    print('the age of Designer  is :${this.age}');
    print('');
    print('the salary of Designer  is :${this.salary}');
    print('');
    print('---------------------------------');
  }
}
 */
