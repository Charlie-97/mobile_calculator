import 'package:flutter/material.dart';

Drawer appDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.grey[800],
    child: ListView(
      padding: const EdgeInsets.all(0.0),
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.grey[900],
          ),
          child: const Text(
            "CALCULATOR MODES",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
        ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              title: const Text(
                "STANDARD",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/scientific');
              },
              title: const Text(
                "SCIENTIFIC",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/converter');
              },
              title: const Text(
                "CONVERTER",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
