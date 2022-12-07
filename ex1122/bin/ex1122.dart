import 'package:ex1122/GenericTest.dart';
import 'package:ex1122/myException.dart';

void main(List<String> arguments) {
  print('22.11.22 dart 연습');

  exceptionTest(10, 0);
  // exceptionTest2(10, 0);
  exceptionTest3(10, 0);

  print('myException 5');
  exceptionTest5(10, 0);

  print('-' * 10);
  print('Create Generic Class');

  var genericTest = GenericTest<String>();

  genericTest.add("apple");
  genericTest.add("melon");

  genericTest.list.forEach(print);

  print('-' * 10);
  genericTest.remove('apple');
  genericTest.list.forEach(print);
}

void exceptionTest(int i, int j) {
  double res = i / j;
  print('res : $res');
}

void exceptionTest2(int i, int j) {
  if (j == 0) {
    throw "Arithmetic Exception";
  }

  double res = i / j;
  print('res : $res');
}

void exceptionTest3(int i, int j) {
  try {
    if (j == 0) {
      throw "Arithmetic Exception";
    }
  } catch (e) {
    j = 1;
    // print(e.toString());
  }

  double res = i / j;
  print('res : $res');
}

void exceptionTest4(int i, int j) {
  try {
    if (j == 0) {
      throw "Arithmetic Exception";
    }
  } catch (e) {
    j = 1;
    // print(e.toString());
  }

  double res = i / j;
  print('res : $res');
}

void exceptionTest5(int i, int j) {
  try {
    if (j == 0) {
      throw MyException('Occured Custom MyException Error');
    }
  } on MyException catch (e) {
    print('on catch : ' + e.toString());
  } catch (e) {
    j = 1;
    // print(e.toString());
  }

  double res = i / j;
  print('res : $res');
}
