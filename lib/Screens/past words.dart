import 'package:flutter/material.dart';

class PastWordsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Past Words'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          'Past Words',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
