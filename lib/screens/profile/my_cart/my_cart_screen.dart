import 'package:flutter/material.dart';

class MyCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('My Cart')),
      body: Center(child: Text('My Cart',style: TextStyle(fontSize: 30),),),
    );
  }
}