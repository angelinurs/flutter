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
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.mail),
                    child: Text('Mail'),
                  ),
                  Tab(
                    icon: Icon(Icons.phone),
                    child: Text('Phone'),
                  ),
                  Tab(
                    icon: Icon(Icons.facebook),
                    child: Text('Facebook'),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Text('Mail Tab',
                    style: TextStyle(fontSize: 24, color: Color(0xff330066))),
                Image.network(
                    'https://cdn.travie.com/news/photo/201810/20576_1746_5530.jpg'),
                Text('Facebook Tab',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 31, 33, 194),
                        fontWeight: FontWeight.bold)),
              ],
            ),
          )),
    );
  }
}
