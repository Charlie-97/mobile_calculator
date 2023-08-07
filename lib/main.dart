import 'package:flutter/material.dart';
import 'package:mobile_calculator/utils/calc_function.dart';
import 'pages/converter.dart';
import 'pages/history.dart';
import 'pages/scientific.dart';
import 'pages/standard.dart';

void main() {
  runApp(const CalcHome());
}

class CalcHome extends StatefulWidget {
  const CalcHome({super.key});

  @override
  State<CalcHome> createState() => _CalcHomeState();
}

class _CalcHomeState extends State<CalcHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: CalcScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
      ),
      routes: {
        '/': (context) => Standard(),
        '/scientific': (context) => const Scientific(),
        '/converter': (context) => const Converter(),
        '/history': (context) => const History()
      },
    );
  }
}

class ScreenView extends StatefulWidget {
  const ScreenView({super.key});

  @override
  State<ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 0.0, right: 0.0),
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: (() {
                    Navigator.pushNamed(context, '/history');
                  }),
                  icon: const Icon(
                    Icons.history_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Text(
              finalOutput,
              style: const TextStyle(
                color: Color.fromARGB(255, 218, 216, 216),
                fontSize: 40.0,
              ),
            ),
            Text(
              initOutput,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 55.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                Navigator.pushNamed(context, '/converter');
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
