import 'package:flutter/material.dart';

class MyReviewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('My Reviews')),
      body: Center(child: Text('My Reviews',style: TextStyle(fontSize: 30),),),
    );
  }
}