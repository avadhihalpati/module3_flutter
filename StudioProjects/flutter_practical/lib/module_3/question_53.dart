import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int changecolor=0;
  List<Color> bgcolor=[
    Colors.white,
    Colors.black54,
    Colors.deepPurple,
    Colors.lightGreen,
    Colors.brown,
    Colors.cyan,
    Colors.orange,
    Colors.blue,
    Colors.red,
    Colors.yellow,
  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:bgcolor[changecolor],
      body: Center(
        child: ElevatedButton(onPressed: () {
            setState(() {
              // if(changecolor < bgcolor.length){
                changecolor++;
              // }
            });
            print('changecolor:$changecolor');
        }, child: Text('Change Background')),
      ),
    );
  }
}
