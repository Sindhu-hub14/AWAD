import 'package:flutter/material.dart';
import 'package:awad/sbmpages/help.dart';
import 'package:awad/sbmpages/about.dart';
import 'package:awad/sbmpages/contact.dart';
import 'package:awad/sbmpages/favourites.dart';
//import 'package:hovering/hovering.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.green,
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'About',
              //style: TextStyle(fontSize:30.0),
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Contact', icon: Icons.contact_phone, 
                onClicked: () => selectedItem(context, 1),
                ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Help',
              icon: Icons.help,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 16),
            Divider(color: Colors.black),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Favourite',
              icon: Icons.favorite,
              onClicked: () => selectedItem(context, 3),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;
  final hoverColor = Colors.white;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(color: color),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => About(),
        ),
      );
      break;

    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Contact(),
        ),
      );
      break;
    case 2:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Help(),
        ),
      );
      break;
    case 3:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Favourites(),
        ),
      );
      break;
  }
}
