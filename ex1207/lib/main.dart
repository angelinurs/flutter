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
        primarySwatch: Colors.blue,
      ),
      // home: exExpanded(),
      home: exExpanded(),
    );
  }
}

// column 으로 표현 할때 Expanded 사용하기
Scaffold exExpanded() {
  return Scaffold(
    body: Row(
      children: [
        Expanded(
          child: Image.network(
              'https://static.euronews.com/articles/stories/06/17/98/48/773x435_cmsv2_220826a6-e865-5977-bb3c-3e75b45822d1-6179848.jpg'),
        ),
        Expanded(
          flex: 2,
          child: Image.network(
              'https://static.euronews.com/articles/stories/06/17/98/48/773x435_cmsv2_220826a6-e865-5977-bb3c-3e75b45822d1-6179848.jpg'),
        ),
        Expanded(
          child: Image.network(
              'https://static.euronews.com/articles/stories/06/17/98/48/773x435_cmsv2_220826a6-e865-5977-bb3c-3e75b45822d1-6179848.jpg'),
        ),
      ],
    ),
  );
}
