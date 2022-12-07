import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xff2196f3);

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Make instagram style post')),
      body: ListView(
        children: [
          // image section
          _setImageSection(),
          // title section
          _setTitleSection(),
          // button section
          _setButtonSection(color),
          // describe section
          _setContext(),
        ],
      ),
    ));
  }

  _setImageSection() {
    return Image.network(
        'https://www.lovebigisland.com/wp-content/uploads/humpback-whale-watching-hawaii.jpg');
  }

  Container _setTitleSection() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // main title
              Text('Humpback whales',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )),
              // sub title
              Text(
                'Why are humpback whales so amazing?',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
          Row(
            children: [
              // book mark
              Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              // follow count
              Text('52'),
            ],
          ),
        ],
      ),
    );
  }

  Container _setButtonSection(Color color) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // call button
          Column(
            children: [
              Icon(
                Icons.phone,
                color: color,
              ),
              Text(
                'CALL',
                style: TextStyle(color: color),
              ),
            ],
            //
          ),
          // route button
          Column(
            children: [
              Icon(
                Icons.near_me,
                color: color,
              ),
              Text(
                'Route',
                style: TextStyle(color: color),
              ),
            ],
            //
          ),
          // share button
          Column(
            children: [
              Icon(
                Icons.share,
                color: color,
              ),
              Text(
                'Share',
                style: TextStyle(color: color),
              ),
            ],
            //
          ),
        ],
      ),
    );
  }

  Container _setContext() {
    return Container(
      margin: EdgeInsets.all(32),
      child: Text(
        ' Humpback whales have a strong cultural value in Hawaii. '
        'To the native Hawaiians a whale is the representation of the Hawaiian god Kanaloa '
        '– the god of all ocean life.',
        softWrap: true,
      ),
    );
  }
}
