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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Test'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.only(top: 0),
            children: [
              Container(
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
                child: SafeArea(
                  child: ListTile(
                      title: Text(
                    '설정',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  )),
                  bottom: false,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10),
                child: Text('Menu1',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10),
                child: Text('Menu2',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10),
                child: Text('Menu3',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              ),
            ],
          ),
        ),
        body: Center(
          child: Text("Drawer 연습!"),
        ),
      ),
    );
  }
}
