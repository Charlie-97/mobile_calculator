import 'package:flutter/material.dart';

class CalcState extends ChangeNotifier {
  String _initOutput = '0';
  String _finalOutput = '';
  List<String> _history = [];

  String get initOutput => _initOutput;
  String get finalOutput => _finalOutput;
  List<String> get history => _history;

  void updateOutput(String newInitOutput, String newFinalOutput) {
    _initOutput = newInitOutput;
    _finalOutput = newFinalOutput;
    notifyListeners();
  }

  void updateHistory(List<String> history) {
    _history = history;
    notifyListeners();
  }
}
