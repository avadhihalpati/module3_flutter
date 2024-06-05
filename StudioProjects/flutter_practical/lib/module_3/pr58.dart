import 'package:flutter/material.dart';


class ColorChangerPagergb extends StatefulWidget {
  @override
  _ColorChangerPageState createState() => _ColorChangerPageState();
}

class _ColorChangerPageState extends State<ColorChangerPagergb> {
  double red = 0, green=0,blue=0;
  Color color=Color.fromRGBO(255, 255, 255, 0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Changer'),
      ),
       body: Container(
        color: Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 3,),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Red: ${red.toInt()}'),
              Slider(
                value: red,
                min: 0,
                max: 255,
                onChanged: (value) {
                  setState(() {
                    red = value;
                  });
                },
              ),
              Text('Green: ${green.toInt()}'),
              Slider(
                value: green,
                min: 0,
                max: 255,
                onChanged: (value) {
                  setState(() {
                    green = value;
                  });
                },
              ),
              Text('Blue: ${blue.toInt()}'),
              Slider(
                value: blue,
                min: 0,
                max: 255,
                onChanged: (value) {
                  setState(() {
                    blue = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
