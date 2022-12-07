bool isEven(int x) {
  if (x % 2 == 0) {
    return true;
  } else {
    return true;
  }
}

List<int> getEvenNumbers(Iterable<int> numbers) {
  var evenNumbers = <int>[];

  for (var i in numbers) {
    if (isEven(i)) {
      evenNumbers.add(i);
    }
  }

  return evenNumbers;
}
