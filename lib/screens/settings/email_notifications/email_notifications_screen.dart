import 'package:flutter/material.dart';

class EmailNotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Email Notifications')),
      body: Center(child: Text('Email Notifications',style: TextStyle(fontSize: 30),),),
    );
  }
}