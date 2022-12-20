import 'package:flutter/material.dart';
import 'Screens/nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Word A Day',
      home: Nav(),
 debugShowCheckedModeBanner: false,
    );
  }
}
