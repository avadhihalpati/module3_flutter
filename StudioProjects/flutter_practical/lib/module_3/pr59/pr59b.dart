import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {


  @override
  State<RegistrationPage> createState() => _RegistrationPageState();

}
class _RegistrationPageState extends State<RegistrationPage> {
  bool _isChecked=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold( backgroundColor: Colors.grey.shade50 ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQonmnCyVt16q1KU58VJmSEECTUvDpmw8jAKw&s")),
          Text("Register",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(20),
            child:TextField(
              decoration: InputDecoration(
                  labelText: 'Enter Name ',
                suffixIcon: IconButton(
                    onPressed: () {}, icon: Icon(Icons.account_circle)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration( labelText: 'Enter Number ',
                suffixIcon: IconButton(
                    onPressed: () {}, icon: Icon(Icons.call)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),),
          ), Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration( labelText: 'Enter Email id',
                suffixIcon: IconButton(
                    onPressed: () {}, icon: Icon(Icons.email)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),),
          ), Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration( labelText: 'Enter Password',
                suffixIcon: IconButton(
                    onPressed: () {}, icon: Icon(Icons.lock)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Checkbox(value: _isChecked, onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },),
              ),
              Text("I accept terms and conditions & privacy policy")
            ],
          ),
          Container(
            decoration: BoxDecoration(borderRadius:  BorderRadius.circular(20),
                gradient: LinearGradient(colors: [Colors.blue.shade100,Colors.purple.shade100])),
            child: SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                },
                child:Text('Register',),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}