import 'package:my_app/Item.dart';

class Sword implements Item {
  int get damage => 5;

  @override
  void use() => print('$this dealt $damage damage.');
}
