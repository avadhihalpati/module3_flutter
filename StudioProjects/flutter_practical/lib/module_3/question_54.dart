import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double FontSize=20;

void increase(){
  setState(() {
    FontSize++;
  });
}
void decrease(){
  setState(() {
    FontSize--;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
            child: IconButton(onPressed: () {
              decrease();
            }, icon:Icon(Icons.exposure_minus_1)),
            ),
            Text('Tops',style: TextStyle(fontSize: FontSize),),
            CircleAvatar(
            child: IconButton(onPressed: () {
              increase();
            }, icon:Icon(Icons.exposure_plus_1)),
            ),
          ],
        ),
      ),
    );
  }
}
