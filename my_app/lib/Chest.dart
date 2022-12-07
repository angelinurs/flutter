import 'Item.dart';

class Chest<T> implements Item {
  final List<T> contents;

  Chest(this.contents);

  @override
  void use() => print('$this has ${contents.length} items.');
}
