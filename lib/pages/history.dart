import 'package:flutter/material.dart';
import 'package:mobile_calculator/utils/calc_function.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    final reversedHistory = history.reversed.toList();

    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: const Text("HISTORY"),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView.builder(
          itemCount: reversedHistory.length,
          itemBuilder: ((context, index) {
            return ListTile(
              title: Card(
                color: Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    reversedHistory[index],
                    style: TextStyle(color: Colors.grey[200]),
                  ),
                ),
              ),
            );
          })),
    );
  }
}
