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
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48,
        child: Image.asset("assets/sunny.png"),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      autofocus: false,
      // initialValue: 'anonymous@example.com',
      decoration: InputDecoration(
        hintText: 'anonymous@example.com',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );

    final pwd = TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      autofocus: false,
      // initialValue: 'anonymous@example.com',
      decoration: InputDecoration(
        hintText: 'password',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );

    final password = Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              labelText: 'Password',
            ),
          )
        ],
      ),
    );

    final btn = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: MaterialButton(
        color: Colors.blue,
        minWidth: 200,
        height: 42,
        child: Text(
          'Sign in',
          style: TextStyle(color: Colors.white),
        ),
        // shape: ,
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );

    final forgetLabel = TextButton(
      onPressed: () {},
      child: const Text(
        'Forget password',
        style: TextStyle(color: Colors.black54),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 24, right: 24),
          children: [
            logo,
            const SizedBox(
              height: 50,
            ),
            email,
            const SizedBox(
              height: 5,
            ),
            // password,
            pwd,
            btn,
            const SizedBox(
              height: 5,
            ),
            forgetLabel,
          ],
        ),
      ),
    );
  }
}
