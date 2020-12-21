import 'package:flutter/material.dart';

class InviteFriendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Invite Friend')),
      body: Center(child: Text('Invite Friend',style: TextStyle(fontSize: 30),),),
    );
  }
}