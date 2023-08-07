import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: const Text("HISTORY"),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView(),
    );
  }
}
