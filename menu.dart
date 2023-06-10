import 'dart:io';

void options() {
  print("""Choose your option from 1 to 6:-
  1)Additions
  2)Multiplication 
  3)Division
  4)Subtraction
  5)Reminder
  6)Exit""");
}

void pick() {
//Global variable nullable
  String? choose;
  do {
    options();
    choose = stdin.readLineSync() ?? '';
  } while ('$choose' == '');

  //let the users choose what they want to perform
  int num1, num2;

  while (true) {
    stdout.write("Enter a first number");
    String intake = stdin.readLineSync() ?? '';
    if (intake == '')
      continue;
    else {
      num1 = int.parse(intake);
      break;
    }
  }
  while (true) {
    stdout.write("Enter a second number:");
    String intake = stdin.readLineSync() ?? '';
    if (intake == '')
      continue;
    else {
      num2 = int.parse(intake);
      break;
    }
  }
}
