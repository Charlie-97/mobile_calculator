import 'dart:math';
import 'package:mobile_calculator/utils/calc_state.dart';

String initOutput = '0';
String finalOutput = '';
String expression = '';
String answer = '';
num _num1 = 0;
num _num2 = 0;
String _operator = '';
int maxOutputLength = 7;
const int maxHistoryEntries = 15;

List<String> history = [];

void buttonPressed(String buttonText, CalcState calcState) {
  if (buttonText == 'C') {
    finalOutput = '';
    initOutput = '0';
    _num1 = 0;
    _num2 = 0;
    _operator = '';
    calcState.updateOutput(initOutput, finalOutput);
  } else if (buttonText == 'Del') {
    backSpace();
    calcState.updateOutput(initOutput, finalOutput);
  } else if (buttonText == 'CE') {
    initOutput = '0';
    calcState.updateOutput(initOutput, finalOutput);
  } else if (_isOperator(buttonText)) {
    if (_operator.isNotEmpty) {
      _num2 = num.parse(initOutput);
      _num1 = num.parse(_performCalculation());
      expression = '$finalOutput  $initOutput =';
      answer = _num1.toString();
      _addHistory();
      _operator = buttonText;
      initOutput = '0';
      finalOutput = ('$_num1 $_operator').toString();
    } else {
      _num1 = num.parse(initOutput);
      _operator = buttonText;
      initOutput = '0';
      finalOutput = _num1.toString();
      finalOutput += ' $_operator';
    }
    calcState.updateOutput(initOutput, finalOutput);
  } else if (buttonText == '%') {
    _num1 = num.parse(initOutput);
    _operator = buttonText;
    finalOutput = ('$_num1 $_operator');
    initOutput = (_num1 / 100).toString();
    _num1 = num.parse(initOutput);

    calcState.updateOutput(initOutput, finalOutput);
    initOutput = '0';
  } else if (buttonText == '=') {
    if (finalOutput.isEmpty) {
      _num1 = num.parse(initOutput);

      if (_num1 != 0) {
        finalOutput = ('$_num1').toString();
      } else {
        finalOutput = '';
      }
    } else {
      _num2 = num.parse(initOutput);
      finalOutput = ('$_num1 $_operator $_num2').toString();
      initOutput = _performCalculation();
      expression = '$finalOutput =';
      answer = initOutput;
      _addHistory();
    }
    calcState.updateOutput(initOutput, finalOutput);
    _num1 = num.parse(initOutput);
    initOutput = '0';
    _operator = '';
    // if (_isOperator(buttonText) || buttonText == '%') {
    //   _num1 = num.parse(initOutput);
    // } else {
    //   _num1 = num.parse(initOutput);
    //   initOutput = '0';
    //   finalOutput = '';
    //   _operator = '';
    // }
  } else if (buttonText == '.') {
    if (!initOutput.contains('.')) {
      initOutput += buttonText;
      calcState.updateOutput(initOutput, finalOutput);
    }
  } else if (initOutput == '0') {
    initOutput = buttonText;
    calcState.updateOutput(initOutput, finalOutput);
  } else if (initOutput != '0') {
    initOutput += buttonText;
    while (initOutput.length > maxOutputLength) {
      initOutput = initOutput.substring(0, maxOutputLength);
    }
    calcState.updateOutput(initOutput, finalOutput);
  } else {
    throw Exception(e);
  }
}

void backSpace() {
  if (initOutput.length > 1) {
    initOutput = initOutput.substring(0, initOutput.length - 1);
  } else {
    initOutput = '0';
  }
}

bool _isOperator(String buttonText) {
  return buttonText == '+' ||
      buttonText == '-' ||
      buttonText == '*' ||
      buttonText == '/';
}

String _performCalculation() {
  switch (_operator) {
    case '+':
      return (_num1 + _num2).toString();
      break;
    case '-':
      return (_num1 - _num2).toString();
      break;
    case '*':
      return (_num1 * _num2).toString();
      break;
    case '/':
      return (_num1 / _num2).toString();
      break;
    default:
      return _num1.toString();
  }
}

void _addHistory() {
  history.add("$expression \n $answer");

  if (history.length > maxHistoryEntries) {
    history.removeAt(0);
  }
}

void clearHistory() {
  history.clear();
  
}

void convert() {}
