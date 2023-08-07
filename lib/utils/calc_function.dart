import 'dart:math';

String initOutput = '0';
String finalOutput = '';
double _num1 = 0;
double _num2 = 0;
String _operator = '';

void buttonPressed(String buttonText) {
  if (buttonText == 'C') {
    finalOutput = '0';
    initOutput = '0';
    _num1 = 0;
    _num2 = 0;
    _operator = '';
  } else if (buttonText == 'CE') {
    initOutput = '0';
  } else if (_isOperator(buttonText)) {
    // if (_operator.isNotEmpty) {
    //   _num2 = double.parse(initOutput);
    //   initOutput = _performCalculation();
    //   _num1 = double.parse(initOutput);
    // } else {
    //   _num1 = double.parse(initOutput);
    // }
    if (_operator.isNotEmpty) {
      _num2 = double.parse(initOutput);
      _num1 = double.parse(_performCalculation());
      _operator = buttonText;
      initOutput = '';
      finalOutput = ('$_num1 $_operator').toString();
      
    } else {
      _num1 = double.parse(initOutput);
      _operator = buttonText;
      initOutput = '0';
      finalOutput = _num1.toString();
      finalOutput += _operator;
    }
  } else if (buttonText == '%') {
    _num1 = double.parse(initOutput);
    _operator = buttonText;
    finalOutput = ('$_num1 $_operator');
    initOutput = (_num1 / 100).toString();
  } else if (buttonText == '=') {
    _num2 = double.parse(initOutput);
    finalOutput = ('$_num1 $_operator $_num2').toString();
    initOutput = _performCalculation();
    if (_operator == '+') {
      initOutput = (_num1 + _num2).toString();
    } else if (_operator == '-') {
      initOutput = (_num1 - _num2).toString();
    } else if (_operator == '*') {
      initOutput = (_num1 * _num2).toString();
    } else if (_operator == '/') {
      initOutput = (_num1 / _num2).toString();
    }
    _num1 = 0;
    _num2 = 0;
    _operator = '';
  } else if (buttonText == '.') {
    if (!initOutput.contains('.')) {
      initOutput += buttonText;
    }
  } else if (initOutput == '0') {
    initOutput = buttonText;
  } else if (initOutput != '0') {
    initOutput += buttonText;
  } else {
    throw Exception(e);
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

void convert() {}
