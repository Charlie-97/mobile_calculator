import 'package:flutter/material.dart';
import 'package:mobile_calculator/widgets/button.dart';
import 'package:mobile_calculator/widgets/screen_view.dart';
import 'package:mobile_calculator/widgets/drawer.dart';


class Standard extends StatefulWidget {
  const Standard({super.key});

  @override
  State<Standard> createState() => _StandardState();
}

class _StandardState extends State<Standard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      drawer: appDrawer(context),
      appBar: AppBar(
        title: const Text("STANDARD"),
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          const ScreenView(),
          Container(
            color: Colors.grey[900],
            child: Column(
              children: [
                Row(
                  children: const [
                    CalcButton('%'),
                    CalcButton('CE'),
                    CalcButton('C'),
                    CalcButton('Del')
                    // BackSpaceButton()
                  ],
                ),
                Row(
                  children: const [
                    CalcButton('7'),
                    CalcButton('8'),
                    CalcButton('9'),
                    CalcButton('*'),
                  ],
                ),
                Row(
                  children: const [
                    CalcButton('4'),
                    CalcButton('5'),
                    CalcButton('6'),
                    CalcButton('-'),
                  ],
                ),
                Row(
                  children: const [
                    CalcButton('1'),
                    CalcButton('2'),
                    CalcButton('3'),
                    CalcButton('+'),
                  ],
                ),
                Row(
                  children: const [
                    CalcButton('.'),
                    CalcButton('0'),
                    CalcButton('/'),
                    CalcButton('='),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
