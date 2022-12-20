import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          'You are in Favourites Page!',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
