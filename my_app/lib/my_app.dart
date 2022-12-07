int calculate() {
  return 6 * 7;
}

int timesTwo(int x) {
  return x * 2;
}

int timesFour(int x) => timesTwo(timesTwo(x));

int runTwice(int x, int Function(int) f) {
  for (var i = 0; i < 2; i++) {
    x = f(x);
  }
  return x;
}
