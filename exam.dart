/********************************* last question
 * 1- abstract function ==> 
 * { 1- can not take object from it 2-any class inherint from it should override methods that have no body }
 * 2-mention different classes exsting in dart ==>{normal class , abstract class , mixin class , enum class}
 * what do you know about constructors
 * {
 *  1- spicial fun
    2-The first function to work in the class
    3-The first function to remove values
    4-Its name is the same as that of the class
 * }
 */


/*********************************** true and false
 * 
 * 1- In Dart, variables declared using the final keyword can be reassigned a new value after 
    initialization =>(false)
   2-  Dart supports multiple inheritance for classes.=>(false)
   3-  Dart's is keyword is used to check if an object is of a specific type.=>(true)
   4-  Dart's List class is an example of an immutable collection.=>(false)
   5-  Dart's super keyword is used to call a superclass's constructor.=>(true)
   6- Dart's == operator compares the values of two objects for equality.=>(true)
   7- Dart's try-catch block is used for handling synchronous exceptions only.=>(false)




 */


/*************************************** Q9
 * 9-Auditable Mixin: Create a mixin called Auditable that adds auditing functionality to a class. 
The mixin should provide methods like recordCreate(), recordUpdate(), and recordDelete() 
that log audit information whenever an object is created, updated, or deleted.
 * 
 * 
 * import 'dart:io';
  void main(){
  print('--------------------------------');
  print('_____ welcame to program_______');
  print('');
  print('enter your username');
  String name = stdin.readLineSync()!;
  var user = Auditable();
  user.recordCreate(name);
  user.recordUpdate(name);
  
}
   mixin Auditable {
  recordCreate(String name){
    print('created : $name');
  }
  recordUpdate(String name){
    print('updated : $name');
  }
  recordDelete(String name) {
    name = '';
    print('deleted : $name');
  }
}

 */


/*************************************** Q8
 * 8- Role-based Access Control: Define an AccessLevel enum that represents different levels 
of access, such as Guest, User, Moderator, and Admin. Create a class called User that 
encapsulates properties like name and accessLevel, and implement methods that perform 
actions based on the user's access level. use(functions and switch cases)
 * 
 * 
 * 
 * import 'dart:io';

void main(List<String> args) {
  print('--------------------------------');
  print('_____ welcame to program_______');
  print('');
  print('what are your function');
  String name = stdin.readLineSync()!;
  User user = User();
  user.set_name = name;
  print('');
  user.get_name;
  print('');
}

class User {
  String x = '';
  set set_name(String name) {
    switch (name) {
      case 'Guest':
        x = 'can not access';
        break;
      case 'User':
        x = 'can not access';
        break;
      case 'Moderator':
        x = 'can not access';
        break;
      case 'Admin':
        x = 'can access';
        break;
    }
  }

  get get_name {
    print(x);
  }
}
 */


/***************************************** Q7
 * 
 * 7-Logging Service: Create an abstract class called Logger that defines methods like 
logInfo(), logWarning(), and logError(). Implement concrete classes like ConsoleLogger and 
FileLogger that extend the Logger class and provide different implementations for logging 
messages
 * 
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
 * 
 * 6-Payment Gateway: Design an abstract class called PaymentGateway that declares 
methods like initiatePayment(), processPayment(), and refundPayment(). Create concrete 
classes like PayPalGateway and StripeGateway that extend the PaymentGateway class. Each 
class should provide its own implementation for the abstract methods.

 * 
 * 
 * 
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
 * 5-Database Connection: Implement a DatabaseConnection interface that defines methods 
like connect(), disconnect(), query(), and execute(). Create concrete classes like 
MySQLConnection and PostgreSQLConnection that implement the DatabaseConnection 
interface. Each class should provide its own implementation for the interface methods
 * 
 * 
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
 * 4-Geometric Shapes: Although you mentioned excluding shapes, I'll include a question 
related to advanced inheritance. Create a base class called Shape with properties and 
methods related to geometric shapes. Then, create subclasses like Rectangle, Circle, and 
Triangle that inherit from the Shape class. Implement methods to calculate area and 
perimeter for each shape, and override them in the subclasses with specific formulas
 * 
 * 
 * 
 * 
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
 * 
 * 3-Bank Account Abstraction: Implement an abstract class called BankAccount that defines 
common properties and methods for bank accounts. Then, create concrete classes like 
SavingsAccount and CheckingAccount that inherit from the BankAccount class. Implement 
specific behavior for each account type, such as interest calculation for savings accounts 
and overdraft protection for checking accounts.
 * 
 * 
 * 
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
 * 2-Employee Hierarchy: Design an employee hierarchy using inheritance. Create a base class 
called Employee with properties like name, age, and salary. Then, create subclasses like 
Manager, Developer, and Designer that inherit from the Employee class. Implement specific 
methods or properties for each subclass that represent their roles or responsibilities.
 * 
 * 
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
 * 
 * 1-Vehicle Hierarchy: Create a class called Vehicle with properties like brand, model, and year. 
Then, 
create subclasses like Car, Motorcycle, 
and Truck that inherit from the Vehicle class.
 Implement specific methods or properties for each subclass that differentiate them from 
each other
 * 
 * 
 * 
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
