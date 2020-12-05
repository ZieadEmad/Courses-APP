import 'package:course_app/screens/welcome/welcome_screen.dart';
import 'package:course_app/shared/colors/colors_common.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: defaultColor,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: WelcomeScreen(),
    );
  }
}


