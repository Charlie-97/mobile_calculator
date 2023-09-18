import 'package:flutter/material.dart';
import 'package:mobile_calculator/utils/calc_function.dart';
import 'package:mobile_calculator/utils/calc_state.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    final reversedHistory = history.reversed.toList();
    CalcState calcStateObj = CalcState();

    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              clearHistory();
              calcStateObj.updateHistory(history);
            },
          ),
        ],
        title: const Text("HISTORY"),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView.builder(
        itemCount: reversedHistory.length,
        itemBuilder: ((context, index) {
          return ListTile(
            tileColor: Colors.grey[900],
            title: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                reversedHistory[index],
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 25.0,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
