import 'package:flutter/material.dart';

class CalcState extends ChangeNotifier {
  String _initOutput = '0';
  String _finalOutput = '';

  String get initOutput => _initOutput;
  String get finalOutput => _finalOutput;

  void updateOutput(String newInitOutput, String newFinalOutput) {
    _initOutput = newInitOutput;
    _finalOutput = newFinalOutput;
    notifyListeners();
  }
}
