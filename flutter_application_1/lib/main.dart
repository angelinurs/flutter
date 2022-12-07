import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My App'),
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                        onPressed: (() => print('pressed button1')),
                        child: Text('button1')),
                    OutlinedButton(
                        onPressed: () {
                          print('pressed buuton 2');
                        },
                        child: Text('button2')),
                    OutlinedButton(onPressed: null, child: Text('button3'))
                  ],
                ),
                Text('Text line'),
                Image.asset('assets/whale2.jpg'),
                // Image.asset('assets/whale01.jpg'),
                // Image.network(
                //     'https://guidetoiceland.imgix.net/4704/x/0/northern-lights-in-iceland-jpeg?auto=format%2Ccompress&crop=faces%2Cedges%2Ccenter&bg=%23fff&fit=crop&q=35&h=955&dpr=1'),
                imgDesc(),
              ],
            )));
  }

  imgDesc() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Text('오로라는 지구상에서 가장 놀라운 자연 현상 중 하나입니다.'
          ' 오로라는 라틴어 aurora borealis 에서 유래되었는데 aurora는 로마 새벽의 여신의 이름이고, borealis는 그리스 북북풍의 이름입니다. '
          '영어로는 \'northern lights\' (북극광) 라고 불리기도 하는데 왜냐하면 북반구에서 관찰되는 다채로운 색의 빛들의 광채이기 때문입니다. '),
    );
  }
}
