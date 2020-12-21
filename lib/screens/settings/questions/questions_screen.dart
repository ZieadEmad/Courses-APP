import 'package:flutter/material.dart';

class QuestionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Questions')),
      body: Center(child: Text('Questions',style: TextStyle(fontSize: 30),),),
    );
  }
}