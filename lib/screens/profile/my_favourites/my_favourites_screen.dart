import 'package:flutter/material.dart';

class MyFavouritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('My Favourites')),
      body: Center(child: Text('My Favourites',style: TextStyle(fontSize: 30),),),
    );
  }
}