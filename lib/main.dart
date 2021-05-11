import 'package:flutter/material.dart';
import 'file:///E:/flutter%20projects/khedma_online_1/lib/stateful/intro_screen.dart';
// import 'package:test_app/screens/slide_three.dart';
// import 'package:test_app/screens/slide_two.dart';
import 'stateless/custom_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       fontFamily: 'janna',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroScreen(),
    );
  }
}

