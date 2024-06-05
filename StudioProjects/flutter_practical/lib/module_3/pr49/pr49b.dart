import 'package:flutter/material.dart';

class SecondDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 300,
                  width: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV4lO8yUXghMcjgwdIF5RxlZSI15aKDvGZWf8fS0nPM-FXijdBBlsuPhawFLcK8CiWxxE&usqp=CAU"),
                          fit: BoxFit.contain)),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'The Mountains ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Auckland,Newzealand',style: TextStyle(color: Colors.grey),),
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Icon(Icons.star),
                        ),
                        Text('41'),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.call,
                                color: Colors.blue, size: 25),
                            Text(
                              'CALL',
                              style:
                              TextStyle(fontSize: 15, color: Colors.blue),
                            ),
                          ],
                        ),
                       Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.send,
                                color: Colors.blue, size: 25),
                            Text(
                              'ROUTE',
                              style:
                              TextStyle(fontSize: 15, color: Colors.blue),
                            ),
                          ],
                        ),
                       Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.share,
                                color: Colors.blue, size: 25),
                            Text(
                              'SHARE',
                              style:
                              TextStyle(fontSize: 15, color: Colors.blue),
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      '''
                      Mountains offer some of the most breathtaking views on Earth, towering majestically over the landscape and providing a sense of awe and tranquility. Their peaks often covered in snow, create a stunning contrast against the blue sky.
                      ''',
                      style:
                      TextStyle(fontSize: 18,),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}