import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Mayple(),
        '/second': (context) => SecondPage(),
      },
      title: 'mayple',
      theme: ThemeData(
        fontFamily: 'RobotoSlab',
      ),
    );
  }
}