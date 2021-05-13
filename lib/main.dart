import 'package:flutter/material.dart';
import 'package:rotas/fourth_screen.dart';
import 'package:rotas/home_screen.dart';
import 'package:rotas/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        'fourth': (context) => FourthScreen(),
      },
    );
  }
}

