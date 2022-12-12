import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  JsonTempData();
  runApp(const MyApp());
}

class JsonTempData {
  String jsonData = '{"id":"naru", "name":"Ramu", "age":"21" }';
  dynamic parseData;

  MemberModel? memVO;

  JsonTempData() {
    parseData = json.decode(jsonData);
    memVO = MemberModel(
        id: parseData['id'],
        name: parseData['name'],
        age: int.parse(parseData['age']));
  }

  String getParseData() {
    return "ID: ${parseData['id']}";
  }

  String printMemVo() {
    return "ID: ${memVO?.id}";
  }
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
            title: const Text('Json 테스트'),
          ),
          body: Column(
            children: [
              TextFormField(
                autofocus: true,
                // initialValue: 'Your Name',
                initialValue: JsonTempData().printMemVo(),
                decoration: InputDecoration(
                    hintText: 'Your Name',
                    contentPadding:
                        const EdgeInsets.fromLTRB(20, 10.2, 20, 10.2),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32))),
              ),
              TextFormField(
                autofocus: true,
                // initialValue: const Text('Your Name'),
                decoration: InputDecoration(
                    hintText: 'Your id',
                    contentPadding:
                        const EdgeInsets.fromLTRB(20, 10.2, 20, 10.2),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32))),
              ),
            ],
          )),
    );
  }
}

class MemberModel {
  final String id;
  final String name;
  final int age;

  MemberModel({required this.id, required this.name, required this.age});

  factory MemberModel.fromJson(Map<String, dynamic> json) {
    return MemberModel(
        id: json['id'] as String,
        name: json['name'] as String,
        age: json['age'] as int);
  }
}
