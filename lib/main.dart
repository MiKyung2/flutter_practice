import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/profile.dart';
import 'screens/project.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Profile(),
        '/project': (context) => Project(),
      },
      title: 'mk',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xFF1E1E28),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        primaryColorLight: Color(0xFF242430),
        primaryColor: Color(0xFF1E1E28),
        canvasColor: Color(0xFF1E1E28),
        accentColor: Color(0xFFECBC2F),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
          ),
          bodyText1: TextStyle(
            fontSize: 18, color: Colors.white
          ),
          bodyText2: TextStyle(
            fontSize: 16,
            color: Colors.white,
            
          ),
        ).apply(
          bodyColor: Colors.white,
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF1E1E28),
        primaryColorLight: Color(0xFF242430),
      ),
      themeMode: ThemeMode.system,
    );
  }
}