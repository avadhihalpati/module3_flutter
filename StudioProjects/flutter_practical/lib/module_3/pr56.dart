import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FourImages extends StatelessWidget {
  const FourImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR53pOk-w-db_T1mVQiG-uXMNEe_ybQ1ptUTg&s"),height: 70,width: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR53pOk-w-db_T1mVQiG-uXMNEe_ybQ1ptUTg&s"),height: 70,width: 70,),
                SizedBox(width: 15,),
                Text('data'),
                SizedBox(width: 15,),
                Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR53pOk-w-db_T1mVQiG-uXMNEe_ybQ1ptUTg&s"),height: 70,width: 70,),
              ],
            ),
            Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR53pOk-w-db_T1mVQiG-uXMNEe_ybQ1ptUTg&s"),height: 70,width: 70,),
          ],
        )

    );
  }
}

