class GenericTest<T> {
  final List<T> _list = [];

  void add(T n) => _list.add(n);
  void remove(T n) => _list.remove(n);

  List<T> get list => _list;
}
