var name = "INCREPAS!";

void main(List<String> arguments) {
  print('${name} 힘내라~!');

  var str = "Michael";
  print(str);

  const age = 30; // 상수이며 컴파일 시 해석이 가능한 값만 저장해야 한다.

  final DateTime now = new DateTime.now(); //최종변수는 실행 시 연산되어
  //들어가는 값 즉, 현재 날짜 같은 값을 넣어도 된다. 하지만 상수로 할 수는 없다.

  print("나이 값: ${age}");
  print("현재날짜: $now");
  print("-----------------------------");
  test1();
  print("-----------------------------");
  ifTest();
}

void ifTest() {
  bool isOn = false;

  if (!isOn) {
    print('isOn is ${isOn} : ${name}');
  } else {
    print("isOn is $isOn");
  }

  int su = 100;
  if (su > 100)
    print('값이 너무 큽니다.');
  else if (su >= 90) //(su >= 90 && su <= 100)
    print('매우 우수합니다.');
  else if (su >= 70) //(su >= 70 && su < 90)
    print('잘 하고 있어요.');
  else if (su >= 60) //(su >= 60 && su < 70)
    print('보통입니다.');
  else
    print("실수가 많았네요");

  int month = 10;
  switch (month) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      print("${month}월은 31일까지 입니다.");
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      print("${month}월은 30일까지 입니다.");
      break;
    case 2:
      print("${month}월은 29일까지 입니다.");
      break;
    default:
      print("1~12월의 값이어야 합니다.");
  }
  print("-------------------------");
  for (int i = 0; i < month; i++) {
    print("i의 값 : ${i}");
  }
}

void test1() {
  num n1 = 100; //정수뿐만 아니라 실수도 저장이 된다.

  int n2 = 100; //정수만 저장한다.
  double n3 = 3.14; // 실수만 저장!

  List<String> list = ['Test', '테스트']; // 리스트 구조
  list.add("390"); //리스트에 추가
  print(list);
  print("리스트에서 1번지 삭제!");
  list.removeAt(1); // 1번지에 있는 요소 삭제
  //print(list);
  list.forEach((v) {
    print(v);
  });

  //리스트 구조 안에 원하는 위치에 특정 값을 저장하자
  list.insert(2, "만세!");
  print("리스트 2번지에 값 저장!");
  list.forEach((element) {
    print(element);
  });

//맵구조 생성
  Map<String, num> map = {"탱커": 100, "아처": 40, "마법": 50};
  print(map.keys); // 키들만
  print(map.values); //값들만

  print(map.keys.elementAt(1)); //키들중 1번지에 있는 키값 출력
  //보통 맵구조는 키를 얻어내거나 알고 있는상태에서 사용을 많이 한다.
  var k1 = "아처";
  print(map[k1]);

  map.forEach((key, value) {
    print("${key}의 방어력은 ${value}입니다.");
  });
}
