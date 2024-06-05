import 'package:flutter/material.dart';

class ArithmeticOperationsPage extends StatefulWidget {
  @override
  _ArithmeticOperationsPageState createState() => _ArithmeticOperationsPageState();
}

class _ArithmeticOperationsPageState extends State<ArithmeticOperationsPage> {
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();
  String _selectedOperation = 'Add';
  String _result = '';

  void _calculateResult() {
    double number1 = double.parse(_number1Controller.text);
    double number2 = double.parse(_number2Controller.text) ;
    double result;

    switch (_selectedOperation) {
      case 'Add':
        result = number1 + number2;
        break;
      case 'Subtraction':
        result = number1 - number2;
        break;
      case 'Multiply':
        result = number1 * number2;
        break;
      case 'Division':
        result =  number1 / number2 ;
        break;
      default:
        result = 0;
    }

    setState(() {
      _result = result.toString();
    });
  }

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOperation = value!;
    });
    _calculateResult();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arithmetic Operations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Number 1',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => _calculateResult(),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Number 2',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => _calculateResult(),
            ),
            Column(
              children: <Widget>[
                RadioListTile<String>(
                  title: Text('Add'),
                  value: 'Add',
                  groupValue: _selectedOperation,
                  onChanged: _handleRadioValueChange,
                ),
                RadioListTile<String>(
                  title: Text('Subtraction'),
                  value: 'Subtraction',
                  groupValue: _selectedOperation,
                  onChanged: _handleRadioValueChange,
                ),
                RadioListTile<String>(
                  title: Text('Multiply'),
                  value: 'Multiply',
                  groupValue: _selectedOperation,
                  onChanged: _handleRadioValueChange,
                ),
                RadioListTile<String>(
                  title: Text('Division'),
                  value: 'Division',
                  groupValue: _selectedOperation,
                  onChanged: _handleRadioValueChange,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Result: $_result',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}