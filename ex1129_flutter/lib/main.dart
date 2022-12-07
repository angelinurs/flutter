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
            title: Text('MyApp'),
          ),
          body: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, //균등분활
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          //클릭했을 때 수행하는 곳!
                          print('Pressed Button1');
                        },
                        child: Text('Button1')),
                    OutlinedButton(onPressed: null, child: Text('Button2')),
                    OutlinedButton(onPressed: null, child: Text('Button3'))
                  ]),
              //Image.asset('assets/main_img3.jpg'),
              Text('INCREPAS 교육센터'),
              Image.network(
                  'https://cdn.travie.com/news/photo/201810/20576_1746_5530.jpg'),
              imgDesc(),
            ],
          )),
    );
  }

  imgDesc() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Text(
          '캐나다 노스웨스턴 준주의 옐로나이프는 미국항공우주국(NASA)이 선정한 세계 최고의 오로라 관측지다. 3박 체류시 95%, 4박 체류시엔 무려 98%의 확률로 오로라를 만나 볼 수 있다. 꼭 머리 위로 쏟아지는 것처럼 아주 가까이 오로라를 볼 수 있는 유일한 곳이기도 하다. 사방 1,000km, 산맥이 존재하지 않는, 말 그대로 평원지대라 어떤 시야의 방해를 받지 않고 곧바로 오로라를 감상할 수 있다. 개썰매, 스노슈잉, 스노우모빌 등 낮 시간에 즐길 만한 겨울 액티비티도 가득하다.'),
    );
  }
}
