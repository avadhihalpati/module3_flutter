import 'package:flutter/material.dart';

void main() => runApp(reverseNumber());

class reverseNumber extends StatefulWidget {
  @override
  State<reverseNumber> createState() => _reverseNumberState();
}

class _reverseNumberState extends State<reverseNumber> {
  TextEditingController _reverseController = TextEditingController();

  String reversedText = '';

  void reverseNumber() {
    String input = _reverseController.text;
    String reversed = input.split('').reversed.join('');
    setState(() {
      reversedText = reversed;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Material App Bar'),
        // ),
        body: Center(
          child:Column( mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Enter Number to Reverse:',style: TextStyle(fontSize: 20),),
            ),
              Padding(
                padding: const EdgeInsets.all(15),
                child:
                TextField(
                  controller: _reverseController,
                  decoration: InputDecoration(
                    hintText: 'Enter Number',
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: ElevatedButton(onPressed: reverseNumber, child: Text('Reverse')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(reversedText,style: TextStyle(fontSize: 25),),
              ),
            ],
          )
        ),
      ),
    );
  }
}
