import 'package:flutter/material.dart';

class CheckBoxProg extends StatefulWidget {


  @override
  State<CheckBoxProg> createState() => _toggleCheckBox();
}

class _toggleCheckBox extends State<CheckBoxProg> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            SizedBox(height: 20),
            if (_isChecked)
              Text(
                'Checkbox is checked!',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}