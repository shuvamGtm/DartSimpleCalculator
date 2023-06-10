/*Today we are learning to make a simple calculator in dart which 
can performs simple calculations such as:-
1)Additions
2)Multiplication 
3)Division
4)Subtraction
5)Reminder
6)Exit*/
import 'menu.dart';
import 'dart:io';
import 'operations.dart';

class Maga extends Roja {
  //let the users choose what they want to perform
  int? num1, num2;
  pick() {
    do {
      options();
      choose = stdin.readLineSync() ?? '';
    } while (choose == '');
    return choose;
  }

  void mageko() {
    if (choose != '6') {
      while (true) {
        stdout.write("Enter a first number: ");
        String intake = stdin.readLineSync() ?? '';
        if (intake == '')
          continue;
        else {
          num1 = int.parse(intake); //num1 takes first number for the operation
          break;
        }
      }
      while (true) {
        stdout.write("Enter a second number: ");
        String intake = stdin.readLineSync() ?? '';
        if (intake == '') {
          continue;
        } else {
          num2 = int.parse(intake); //num2 takes first number for the operation
          break;
        }
      }
    }
  }
}

void main() {
  Maga maga = Maga();
  //Roja roja = Roja();

  //let the user to choose wat operations they wanna perform

  maga.pick();
  maga.mageko();

  switch (maga.choose) {
    case '1':
      //calling a function addition.dart to perform addition
      add(num1: maga.num1, num2: maga.num2);
      break;
    case '2':
      multiply(num1: maga.num1, num2: maga.num2);
    case '3':
      divide(num1: maga.num1, num2: maga.num2);
    case '4':
      subtract(num1: maga.num1, num2: maga.num2);
    case '5':
      reminder(num1: maga.num1, num2: maga.num2);
    case '6':
      break;
  }
}
