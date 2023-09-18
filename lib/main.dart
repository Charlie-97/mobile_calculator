import 'package:flutter/material.dart';
import 'package:mobile_calculator/utils/calc_state.dart';
import 'package:provider/provider.dart';
import 'package:mobile_calculator/pages/converter.dart';
import 'package:mobile_calculator/pages/history.dart';
import 'package:mobile_calculator/pages/scientific.dart';
import 'package:mobile_calculator/pages/standard.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CalcState(),
    child: const CalcHome(),
  ));
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
        theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
      ),
      routes: {
        '/': (context) => const Standard(),
        '/scientific': (context) => const Scientific(),
        '/converter': (context) => const Converter(),
        '/history': (context) => const History()
      },
    );
  }
}



