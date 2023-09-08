import 'package:flutter/material.dart';
import 'package:mobile_calculator/utils/calc_function.dart';
import 'package:mobile_calculator/utils/calc_state.dart';
import 'package:provider/provider.dart';

class CalcButton extends StatelessWidget {
  final String buttonLabel;
  // final Future<void> Function() onPressed;
  const CalcButton(this.buttonLabel, {super.key});

  @override
  Widget build(BuildContext context) {
    final calcState = Provider.of<CalcState>(context);

    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          buttonPressed(buttonLabel, calcState);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[900],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(buttonLabel),
        ),
      ),
    );
  }
}

class BackSpaceButton extends StatelessWidget {
  const BackSpaceButton({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          backSpace();
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
