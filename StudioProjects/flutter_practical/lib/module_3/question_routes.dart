
import 'package:flutter/material.dart';
import 'package:flutter_practical/module_3/question_53.dart';
import 'pr49/pr49a.dart';
import 'pr49/pr49b.dart';
import 'pr50.dart';
import 'pr51/pr51a.dart';
import 'pr52.dart';
import 'pr55.dart';
import 'pr56.dart';
import 'pr57.dart';
import 'pr58.dart';
import 'pr59/pr59.dart';
import 'pr60/design.dart';
import 'pr60/design_2.dart';
import 'question_54.dart';

class Question {
  final int qno;
  final String title;
  final String routeName;

  Question(this.qno, this.title, this.routeName);
}

final List<Question> questions = [
  Question(49, "Create First screen", "/first"),
  Question(49, "Create Second screen", "/second"),
  Question(50, "Create an application to take input number from user and print its reverse number in TextField", "/reverseNumber"),
  Question(51, "Create an application to input 2 numbers from user and all numbers between those 2 numbers in next activity", "/betweenNumbers"),
  Question(52, "Create an application with radio buttons (Add, Subtraction, Multiply, Division) EditText (number1, number2) and print result as per user choice from radio button in TextView", "/arithmeticOperations"),
  Question(53, "Create an application to change background when button is clicked", "/changeBackground"),
  Question(54, "Create an application to increase font size when plus button click and decrease when minus button click", "/fontSize"),
  Question(55, "Create an application to display TextView when checkbox is checked and hide otherwise", "/checkBox"),
  Question(56, "Write a program to show four images around TextView", "/fourImages"),
  Question(57, "Write a program in Android to display screen color which the Color will be selected from the radio button", "/colorChanger"),
  Question(58, "Write a program with three SeekBar controls. Changing the value of any SeekBar will change the background color of the device", "/seekBarColorChanger"),
  Question(59, "Create Login Page", "/login"),
  Question(60, "Restaurant Screen", "/restaurant"),
  Question(60, "Pizza Screen", "/pizza"),
];

final Map<String, WidgetBuilder> routes = {
  "/first": (context) => FirstDesignScreen(),
  "/second": (context) => SecondDesignScreen(),
  "/reverseNumber": (context) => reverseNumber(),
  "/betweenNumbers": (context) => FirstScreen(),
  "/arithmeticOperations": (context) => ArithmeticOperationsPage(),
  "/changeBackground": (context) => HomeScreen(),
  "/fontSize": (context) => HomePage(),
  "/checkBox": (context) => CheckBoxProg(),
  "/fourImages": (context) => FourImages(),
  "/colorChanger": (context) => ColorChangerPage(),
  "/seekBarColorChanger": (context) => ColorChangerPagergb(),
  "/login": (context) => LoginPage(),
  "/restaurant": (context) => RestaurantScreen(),
  "/pizza": (context) => PizzaDesign(),
};