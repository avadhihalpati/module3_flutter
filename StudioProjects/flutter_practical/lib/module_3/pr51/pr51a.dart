import 'package:flutter/material.dart';
import 'package:flutter_practical/module_3/pr51/pr51b.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController _number1Controller = TextEditingController();
  TextEditingController _number2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Enter Numbers'),
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Enter Numbers:',style: TextStyle(fontSize: 20),),
              SizedBox(height: 20),
              TextField(
                controller: _number1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter first number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _number2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter second number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 140),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(
                          number1: int.parse(_number1Controller.text),
                          number2: int.parse(_number2Controller.text),
                        ),
                      ),
                    );
                  },
                  child: Text('Generate Number List'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}