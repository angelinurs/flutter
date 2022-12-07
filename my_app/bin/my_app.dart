import 'package:my_app/Item.dart';
import 'package:my_app/Chest.dart';
import 'package:my_app/DiamondSword.dart';
import 'package:my_app/Sword.dart';
import 'package:my_app/controll_flow.dart';
import 'package:my_app/my_app.dart' as my_app;

import 'dart:math' as math;

void main(List<String> arguments) {
  print('Hello world: ${my_app.calculate()}!');

  print('4 times two is ${my_app.timesTwo(4)}');

  print('4 times four is ${my_app.timesFour(4)}');

  print('2 x 2 x 2 is ${my_app.runTwice(2, my_app.timesTwo)}');

  var numbers = List.generate(10, (i) => 1);

  print(getEvenNumbers(numbers));

  print('a single quoted string');
  print("a single quoted string");

  print('cat' 'dog');

  print('''triple quoted strings are for multiple lines''');

  final pi = math.pi;

  print('pi is $pi');
  print('tau is ${2 * pi}');

  print('-' * 10);

  var chest = Chest<Item>([
    DiamondSword(),
    Sword(),
  ]);

  chest.use();

  for (final item in chest.contents) {
    item.use();
  }

  print('-' * 10);

  //
  var message = StringBuffer('Dart is fun');

  for (var i = 0; i < 5; i++) {
    message.write('!');
  }

  print('$message');

  //
  var callbacks = [];

  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }

  //
  print('-' * 10);
  var collection = [1, 2, 3];
  collection.forEach(print);

  //
  print('-' * 10);
  int? testNumber;
  print(testNumber);
  var hex = 0xDEADBEEF;
  print(hex);
  print(1.toString());
  print(r'In a raw string, not even \n gets special treatment.');

  var conditionVal = true;

  var nav = ['Home', 'mart', if (conditionVal) 'Outlet'];

  nav.forEach(print);

  var ints = [1, 2, 3];
  var strings = ['#0', for (var i in ints) '#$i'];
  strings.forEach(print);

  var gift = <int, String>{};
  gift[2] = '1';
  gift[0] = '3';

  gift.forEach((key, value) => print('# $key -> $value'));

  const fruits = ['apples', 'bananas', 'oranges'];

  fruits
      .map((item) => item.toUpperCase())
      .forEach((e) => print('$e : ${e.length}'));

  fruits.forEach((e) => print('$e : ${e.length}'));

  print(3 ~/ 2);

  Object st = '10';
  print((st as String).endsWith('10'));

  String? b;
  b ??= 'value';

  print(b);
  print(DateTime.now());
}
