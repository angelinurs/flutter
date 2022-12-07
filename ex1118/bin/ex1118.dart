import 'package:ex1118/myTest.dart' as test;

void main(List<String> arguments) {
  bool chk = true;
  int cnt = 0;

  while (chk) {
    print('while cnt: ${cnt}');
    chk = ++cnt >= 5 ? false : true;
  }
  print('----- do~while ----------------');
  chk = true;
  cnt = 10;
  do {
    print('do~while cnt : ${cnt}');
    chk = ++cnt >= 5 ? false : true;
  } while (chk);
  print('----- List를 이용한 for문 ----------------');
  List<int> list = [];
  list.add(100);
  list.add(180);
  list.add(120);

  for (int i = 0; i < list.length; i++) {
    print("list[${i}]: ${list.elementAt(i)}"); // list[0]:100
    /*
      위 내용에서 인지해야 할 것은 변수 앞에 ${}를 사용할 때는
      문제가 없다. 하지만 $만 기술하면 i와 같은 변수 하나에 적용할 때는
      아무런 문제가 되지 않지만 list.elementAt(i) 경우엔 문제가 된다.
      $list.elementAt(i) : list만 객체로 해석되고 .elementAt(i)는 문자열로 인식된다.
      그래서 ${list.elementAt(i)} 이렇게 모두 포함시켜야 객체화하고 그 객체가 가지는
      함수로 인식된다.
    */

    print("------- 함수 호출 ---------------");
    sayHello();
    var str = greet("반갑습니다.");
    print(str);
    str = greet("안녕하세요!", "즐거운 주말되세요");
    print(str);
    print("------- 외부함수 호출 ---------------");

    List<int> ar = [10, 20, 30, 40, 50];

    ar.forEach((value) {
      test.printElement(value); // lib폴더에서 우리가 임의로 만든
      // myTest.dart에 있는 외부함수 호출!
    });
  }
}

String comp = "INCREPAS"; // 전역변수 선언

sayHello() {
  // 함수 정의! 반환형이 없으면 void가 자동으로 지정된다.
  for (int i = 0; i < 3; i++) {
    print("sayHello:${comp}");
  }
}

String getText(int n) {
  return n.toString();
}

String createMessage(String msg1, String msg2) {
  return msg1 + ":" + msg2;
}

String greet(String msg1, [String msg2 = "! ^^"]) {
  // 첫번째 인자는 무조건
// 입력해서 받아야 한다. 두번째 인자는 기본값을 지정하여 인자가 안들어올 때 사용함!
// 이런 것을 "선택적 위치 매개변수"라고 한다.
  return msg1 + ":" + msg2;
}
