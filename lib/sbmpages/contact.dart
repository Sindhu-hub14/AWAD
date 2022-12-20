import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          'You are in Contact Page!',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
