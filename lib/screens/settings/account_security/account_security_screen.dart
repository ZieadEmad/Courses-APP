import 'package:flutter/material.dart';

class AccountSecurityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Account Security')),
      body: Column(
        children: [
          Center(child: Text('Account Security',style: TextStyle(fontSize: 30),),),
        ],
      ),
    );
  }
}
