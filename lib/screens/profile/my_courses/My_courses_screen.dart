import 'package:flutter/material.dart';

class MyCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('My Courses')),
      body: Center(child: Text('My Courses',style: TextStyle(fontSize: 30),),),
    );
  }
}