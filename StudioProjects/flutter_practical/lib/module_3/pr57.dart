import 'package:flutter/material.dart';

class ColorChangerPage extends StatefulWidget {
  @override
  _ColorChangerPageState createState() => _ColorChangerPageState();
}

class _ColorChangerPageState extends State<ColorChangerPage> {
  Color _backgroundColor = Colors.white;

  void _updateColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Text('Color Changer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'Red',
                    style: TextStyle(color: Colors.red, fontSize: 22),
                  ),
                ),
              ),
              value: Colors.red,
              groupValue: _backgroundColor,
              onChanged: (value) {
                setState(() {
                  _updateColor(value!);
                });
              },
            ),
            RadioListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'green',
                    style: TextStyle(color: Colors.greenAccent, fontSize: 22),
                  ),
                ),
              ),
              value: Colors.greenAccent,
              groupValue: _backgroundColor,
              onChanged: (value) {
                setState(() {
                  _updateColor(value!);
                });
              },
            ),
            RadioListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'blue',
                    style: TextStyle(color: Colors.blue, fontSize: 22),
                  ),
                ),
              ),
              value: Colors.blue,
              groupValue: _backgroundColor,
              onChanged: (value) {
                setState(() {
                  _updateColor(value!);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
