import 'package:ex1123/exAsync.dart';
import 'package:ex1123/exStatic.dart';
import 'package:ex1123/exUseLibrary.dart';

void main(List<String> arguments) {
  // ex async
  print('-' * 5);
  print('-- ex async --');

  testAsync();

  print('-' * 5);

  // ex static
  print('-- ex static --');

  testStatic();

  print('-' * 5);

  // ex use library
  // convert map type to json type library
  print('-' * 5);

  // ex static
  print('-- ex convert to json --');

  testConvertJson();

  print('-' * 5);
}
