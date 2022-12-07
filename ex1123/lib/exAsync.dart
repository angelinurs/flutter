// 비동기 작동 방식에 대해서 공부해본다.

// async 로 지정하면 반드시 Future 형을 만족하도록
// 반환형이 지정되어야 한다.

// undef async
bool longWait(String prefix) {
  for (int i = 0; i < 5; i++) {
    print('${prefix} : ${i}');
  }

  return true;
}

// def async
Future<bool> longWait2(String prefix) async {
  for (int i = 0; i < 5; i++) {
    print('${prefix} : ${i}');
  }

  return true;
}

void testThen() {
  print('start.....');

  // 비동기식 호출 시작 -----------------------
  longWait2('Then').then((value) => {
        // longWait2 함수가 성공적으로 수행을 마친후 수행하는 공간!
        print('done waiting: ${value}')
      });
  // 비동기식 호출 종료 -----------------------

  print('done');
}

test2() {
  print('start.....');

  var ch1 = longWait2('One');
  Future<bool> ch2 = longWait2('Two');

  print('Test2 done...: ${ch1}, ${ch2}');
}

test3() async {
  print('start.....');

  var ch1 = longWait2('One');
  Future<bool> ch2 = longWait2('Two');

  // 지정된 async 가 종료 되면 다음 statement 를 수행한다.
  await Future.wait([ch1, ch2]);

  print('Test2 done...: ${ch1}, ${ch2}');
}

testAsync() {
  testThen();
  test2();
  test3();
}
