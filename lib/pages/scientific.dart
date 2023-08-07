import 'package:flutter/material.dart';
import 'package:mobile_calculator/main.dart';

class Scientific extends StatelessWidget {
  const Scientific({super.key});

  final number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      drawer: appDrawer(context),
      appBar: AppBar(
        title: const Text("SCIENTIFIC"),
        backgroundColor: Colors.grey[900],
      ),
      // body: Column(
      //   children: [
      //     ScreenView(),
      //     Container(
      //       color: Colors.grey[900],
      //       child: Column(
      //         children: [
      //           Row(
      //             children: [
      //               calcButton('%'),
      //               calcButton('CE'),
      //               calcButton('C'),
      //               Expanded(
      //                 child: ElevatedButton(
      //                   onPressed: () {},
      //                   style: ElevatedButton.styleFrom(
      //                     backgroundColor: Colors.grey[900],
      //                   ),
      //                   child: const Padding(
      //                     padding: EdgeInsets.all(15.0),
      //                     child: Icon(Icons.backspace_outlined),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               calcButton('x^y'),
      //               calcButton('7'),
      //               calcButton('8'),
      //               calcButton('9'),
      //               calcButton('X'),
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               calcButton('π'),
      //               calcButton('7'),
      //               calcButton('8'),
      //               calcButton('9'),
      //               calcButton('X'),
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               calcButton('10^x'),
      //               calcButton('4'),
      //               calcButton('5'),
      //               calcButton('6'),
      //               calcButton('-'),
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               calcButton('Log'),
      //               calcButton('1'),
      //               calcButton('2'),
      //               calcButton('3'),
      //               calcButton('+'),
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               calcButton('In'),
      //               calcButton('.'),
      //               calcButton('0'),
      //               calcButton('/'),
      //               calcButton('='),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
