import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Page Test')),
        body: ListView(
          children: [
            _setImageSection(), // 이미지 세션
            _setTitleSection(), // 제목 세션
            _setButtonSection(color), // 버튼 세션
            _setTextSection() // 설명 문자열 세션
          ],
        ),
      ),
    );
  }

  _setImageSection() {
    return Image.network(
        'https://cdn.travie.com/news/photo/201810/20576_1746_5530.jpg');
  }

  _setTitleSection() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Inishowen Campground',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                'County Donegal, Ireland',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ), // 큰 제목과 작은 제목이 위/아래로 자리 잡는다.
          Row(
            children: [Icon(Icons.star, color: Colors.red), Text('52')],
          ), // 별모양과 숫자가 옆으로 나란히 자리 잡는다.
        ],
      ),
    );
  }

  _setButtonSection(Color color) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Column(
          children: [
            Icon(
              Icons.call,
              color: color,
            ),
            Text('CALL', style: TextStyle(color: color))
          ],
        ),
        Column(
          children: [
            Icon(Icons.near_me, color: color),
            Text('ROUTE', style: TextStyle(color: color))
          ],
        ),
        Column(
          children: [
            Icon(Icons.share, color: color),
            Text('SHARE', style: TextStyle(color: color))
          ],
        )
      ]),
    );
  }

  _setTextSection() {
    return Container(
      margin: EdgeInsets.all(15),
      child: Text(
          '기타 오로라 관측지에 비해 옐로나이프가 가진 또 하나의 장점은 접근성이다. 대개 사람이 거주하지 않는 외딴 곳을 향해 장시간 비행과 육로 이동을 해야 닿는 다른 오로라 관측지에 비해 옐로나이프까지 가는 길은 수월하다. 지난 9월5일부터 매일 1회 운행하는 에어캐나다의 밴쿠버-옐로나이프 직항 노선이 재개돼 단 한 번의 경유로 한국에서 옐로나이프까지 이동할 수 있게 된 것. 10월 말부터 내년 4월 말까지는 직항편이 1일 2회로 추가 운행돼 출국한 당일 바로 옐로나이프에 도착할 수 있게 된다.'),
    );
  }
}
