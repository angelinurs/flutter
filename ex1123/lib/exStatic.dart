class Counter {
  // static 선언된 member variable 은
  // 같은 class 로 생성된 서로 다른 object 끼리 공유할수 있다.
  static var _count = 0;

  void increase() {
    _count++;
  }

  void decrease() => _count--;

  static void printCount() => print(_count);

  set count(count) => _count = count;

  int get count => _count;

  addFive() => _count += 5;
}

testStatic() {
  Counter.printCount();
  var c1 = Counter();
  var c2 = Counter();

  c1.increase();
  Counter.printCount();
  c2.addFive();
  Counter.printCount();

  c1.count = 1;
  Counter.printCount();
}
