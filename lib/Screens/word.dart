import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

var now = new DateTime.now();
var formatter = new DateFormat.yMMMMd('en_US');
String today = formatter.format(now);

class WordPage extends StatefulWidget {
  const WordPage({super.key});

  @override
  _WordPageState createState() => _WordPageState();
}

class _WordPageState extends State<WordPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              today,
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
            Text(
              'Fetch : to go to another place to get something or someone and bring it',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.black, letterSpacing: .5, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
