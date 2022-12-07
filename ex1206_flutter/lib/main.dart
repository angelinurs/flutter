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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid Test'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          /*scrollDirection: Axis.horizontal, // 스크롤 방향을 수평으로 지정 */
          /*
          children: [
            Center(child: Text('Item1')),
            Center(child: Text('Item2')),
            Center(child: Text('Item3')),
          ],
          */
          // 자동으로 100개를 만들어주는 문장!
          /*children: List.generate(100, (index) {
            return Center(child: Text('Item ${index}'));
          }),*/
          children: [
            Container(
              color: Colors.deepPurple,
              child: Center(child: Text('Item1')),
            ),
            Container(
              color: Colors.orange,
              child: Center(child: Text('Item2')),
            ),
            Container(
              color: Colors.lime,
              child: Center(child: Text('Item3')),
            ),
            Container(
              color: Colors.yellow,
              child: Center(child: Text('Item4')),
            ),
            Container(
              color: Colors.red,
              child: Center(child: Text('Item5')),
            ),
          ],
        ),
      ),
    );
  }
}
