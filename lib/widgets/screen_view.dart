import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_calculator/utils/calc_state.dart';

class ScreenView extends StatelessWidget {
  const ScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final calcState = Provider.of<CalcState>(context);

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
              calcState.finalOutput,
              style: const TextStyle(
                color: Color.fromARGB(255, 218, 216, 216),
                fontSize: 40.0,
              ),
            ),
            Text(
              calcState.initOutput,
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


