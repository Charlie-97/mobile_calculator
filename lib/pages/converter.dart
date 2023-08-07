import 'package:flutter/material.dart';
import '../main.dart';
import 'package:mobile_calculator/utils/calc_function.dart';

class Converter extends StatefulWidget {
  const Converter({super.key});

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  double inputValue1 = 1;
  double inputValue2 = 1.0;

  String measurementType = 'Length';
  List<String> measurementList = ['Length', 'Area', 'Volume'];

  List<String> lengthTypes = [
    'Milimeter',
    'Meter',
    'kilometer',
    'feet',
    'inches',
  ];
  // List<String> items = ;
  String units1 = 'Milimeter';
  String units2 = 'Meter';
  @override
  Widget build(BuildContext context) {
    final String inputHintText = inputValue1.toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONVERTER"),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        color: Colors.grey[700],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SELECT MEASUREMENT TYPE:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  DropdownButton<String>(
                    value: measurementType,
                    dropdownColor: Colors.grey[900],
                    items: measurementList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[200],
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        measurementType = newValue!;
                      });
                    },
                  ),
                ],
              ),
              Divider(
                height: 20.0,
                thickness: 1.0,
                color: Colors.black,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(hintText: inputHintText),
                      onChanged: (value) => setState(() {
                        inputValue1 = double.tryParse(value) ?? 0;
                      }),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  DropdownButton<String>(
                    value: units1,
                    items: lengthTypes
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 16),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        units1 = newValue!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  DropdownButton<String>(
                    value: units1,
                    items: lengthTypes
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 16),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        units1 = newValue!;
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
