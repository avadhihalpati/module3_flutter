import 'package:flutter/material.dart';

class FirstDesignScreen extends StatelessWidget {
  const FirstDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              height: 150,
              color: Colors.red,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 400,
              child: GridView.count(

                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 1/.8,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    height:40,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    height:40,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    height:40,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    height:40,
                  ),
                ],
              ),
            ),
            Container(
              height: 270,
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                childAspectRatio: 1/.8,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}