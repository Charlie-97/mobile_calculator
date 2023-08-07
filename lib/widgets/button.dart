import 'package:flutter/material.dart';
import 'package:mobile_calculator/utils/calc_function.dart';

class CalcButton extends StatefulWidget {
  final String buttonLabel;
  // final Future<void> Function() onPressed;
  const CalcButton(this.buttonLabel, {super.key});

  @override
  State<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            buttonPressed(widget.buttonLabel);
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[900],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(widget.buttonLabel),
        ),
      ),
    );
  }
}

class BackSpaceButton extends StatefulWidget {
  const BackSpaceButton({super.key});

  @override
  State<BackSpaceButton> createState() => _BackSpaceButtonState();
}

class _BackSpaceButtonState extends State<BackSpaceButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (initOutput.length > 1) {
              initOutput = initOutput.substring(0, initOutput.length - 1);
            } else {
              initOutput = '';
            }
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[900],
        ),
        child: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(Icons.backspace_outlined),
        ),
      ),
    );
  }
}
