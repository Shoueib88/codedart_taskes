import 'dart:io';

void main(List<String> args) {
  //1- we declare a variable by three methods

//first

// int x;

//second

// int? x;

//third

// late int x;

//2-yes,we Can declare a variable that can be null

// int? x;

//3-we convert a variable from one type to another by using datatype named (dynamic)

// dynamic S = 21; // (int)

//	S = 'shoueib'; // (String)

//====  the program  =====
  //list of some collages
  Map<String, Map<String, dynamic>> collages = {
    'c1': {
      'name': 'Medicine',
      'coordination': '98%',
      'numDep': 7,
      'sections': [
        'General Medicine',
        'Pediatrics',
        'dentist',
        'Heart Surgery',
        'Psychiatry',
        'nuclear medicine',
        'Kidney disease',
      ]
    },
    'c2': {
      'name': 'Engineering',
      'coordination': '92%',
      'numDep': 7,
      'sections': [
        'Aviation and space',
        'architecture',
        'Biomedical Engineering',
        'Chemical Engineering',
        'Electrical power engineering',
        'Electronics and electrical communications',
        'Mathematics and Engineering Physics',
      ]
    },
    'c3': {
      'name': 'Computers and artificial intelligence',
      'coordination': '90.5%',
      'numDep': 6,
      'sections': [
        'cs',
        'is',
        'it',
        'medical',
        'mecatronica',
        'cyber security',
      ]
    },
    'c4': {
      'name': 'the sciences',
      'coordination': '82.5%',
      'numDep': 8,
      'sections': [
        'Chemistry',
        'Physics',
        'mathematics',
        'Biochemistry',
        'Analytical chemistry',
        'computer',
        'Statistics',
        'animal chemistry',
      ]
    },
  };

  while (true) {
    try {
      print('enter a number of collage');
      String numCollage = stdin.readLineSync()!;
      if (numCollage == null) {
        print('No Data');
        break;
      }
      collages.forEach((key, value) {
        if (numCollage == key) {
          //c1
          value.forEach((innerkey, innervalue) {
            print('''$innerkey : $innervalue''');
          });
          return; //terminate forEach Loop
        }
      });
    } catch (e) {
      print('*******$e****/');
    }
    print('*************************');
  }
}
