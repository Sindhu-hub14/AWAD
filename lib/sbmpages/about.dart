import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          'You are in About Page!',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
