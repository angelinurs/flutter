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
            title: Text('MyApp'),
          ),
          body: Center(
            child: Row(children: [
              const IconButton(onPressed: null, icon: Icon(Icons.menu)),
              const IconButton(onPressed: null, icon: Icon(Icons.search)),
              const TextButton(onPressed: null, child: Text('Button')),
              const OutlinedButton(onPressed: null, child: Text('Button')),
              const ElevatedButton(onPressed: null, child: Text('Button')),
              ElevatedButton.icon(
                onPressed: null,
                icon: Icon(Icons.add_a_photo, size: 10),
                label: Text('Button'),
              ),
            ]),
          )),
    );
  }
}
