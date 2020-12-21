import 'package:flutter/material.dart';

class PushNotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Push Notifications')),
      body: Center(child: Text('Push Notifications',style: TextStyle(fontSize: 30),),),
    );
  }
}