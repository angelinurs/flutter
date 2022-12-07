import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  /*
  StatelessWidget:화면에 변화를 주지 않을 때 사용
  StatefulWidget: 실제 데이터를 관리하는 Container임과 동시에 View를
    지정해 주는 State의 LifeCycle에 관여한다. 쉽게 얘기하면
    한번 만들어진 화면이 어떤 이유로 변경될 수 있는 경우일 때 사용
  */
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
/*      home: Center(
        child: Text(
          'Hello, world',
          textDirection: TextDirection.ltr,
        ),
      ),
*/
        home: new Scaffold(
            appBar: AppBar(
              title: Text('INCREPAS App'),
            ),
            body: Center(
              child: Text('첫번재 입니다.'),
            )));
  }
}
