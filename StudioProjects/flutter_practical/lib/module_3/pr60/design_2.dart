import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class PizzaDesign extends StatelessWidget {
  const PizzaDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade700,
      appBar: AppBar(
        backgroundColor: Colors.amber.shade700,
        leading: IconButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
          icon: Icon(Icons.arrow_back, size: 25),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white)),
            icon: Icon(Icons.favorite_border, size: 25),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(

        children: [
          Stack(children: [
            Container(
              height: 130,
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height/22,
              left: MediaQuery.of(context).size.width/3.2,
              child: CircleAvatar(
                radius: 80,
                foregroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThoNsV6XLSSaL5Cb3pOk0tjpXAKV5mQhHfiQ&s'),
              ),
            ),
          ]),
          Container(
            color: Colors.grey.shade100,
            height: MediaQuery.of(context).size.height /1.4,
            child: Column(
              children: [
                Text(
                  'Sei Ua Samun Phrai',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: Colors.blue,
                        ),
                        Text('50min'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text('4.8'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.local_fire_department_sharp,
                          color: Colors.red,
                        ),
                        Text('325Kcal'),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 0,
                    left: 15,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.grey),
                  height: 50,
                  width: 205,
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "\$12 ",
                        style: TextStyle(fontSize: 18),
                      ),
                      Expanded(
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '-',
                                    style: TextStyle(fontSize: 25),
                                  )),
                              CircleAvatar(
                                child: Text("1"),
                                backgroundColor: Colors.white,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 20),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container( width: double.maxFinite,
                  padding: EdgeInsets.only(left: 20,top: 20),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ingredient',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Card(
                              child:  Padding(
                                padding: const EdgeInsets.all(18),
                                child: Column(
                                  children: [ CircleAvatar(foregroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThoNsV6XLSSaL5Cb3pOk0tjpXAKV5mQhHfiQ&s')),
                                    SizedBox(height: 10,),
                                    Text('Noodle')
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                            ),
                            SizedBox(width: 20,),
                            Card(
                              child:  Padding(
                                padding: const EdgeInsets.all(18),
                                child: Column(
                                  children: [ CircleAvatar(foregroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQipwriaVaqw44r8tIlnlbFSbpXDjQvSesZOA&s')),
                                    SizedBox(height: 10,),
                                    Text('Shrimp')
                                  ],
                                ),
                              ),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                            ),
                            SizedBox(width: 20,),
                            Card(
                              child:  Padding(
                                padding: const EdgeInsets.all(18),
                                child: Column(
                                  children: [ CircleAvatar(foregroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdtOzgu7AIhwhU3Uflaw2B7Z_LiVufi383ew&s')),
                                    SizedBox(height: 10,),
                                    Text('Egg')
                                  ],
                                ),
                              ),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                            ),
                            SizedBox(width: 20,),
                            Card(
                              child:  Padding(
                                padding: const EdgeInsets.all(18),
                                child: Column(
                                  children: [ CircleAvatar(foregroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaPwgkFH8O_StMQWxvwFQ1AIzDfrLnJjfsGQ&s')),
                                    SizedBox(height: 10,),
                                    Text('Scallion')
                                  ],
                                ),
                              ),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Text("About", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                       ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Text(" A vibrant Thai sausage made with ground chicken,plus its spicy chille dip. from chef pamass savang of atlamtas Talat Market.",textAlign: TextAlign.justify,),
                      )
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 40,
                        width: 83,
                        decoration: BoxDecoration(
                        color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 9),
                              child: Icon(Icons.shopping_bag_outlined),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10,top: 5,bottom: 5),
                              child: CircleAvatar(
                                child: Text('1',style: TextStyle(color: Colors.black),),
                                foregroundColor: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
