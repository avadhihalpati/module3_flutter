import 'package:flutter/material.dart';
import 'package:flutter_practical/module_3/question_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home: QuestionPage(),
      routes: routes,
    );
  }
}

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  _onQuestionSelected(String question) {
    Navigator.pushNamed(context, question);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question List"),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder:(context, index) {
        return ListTile(
          title: Card(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${questions[index].qno}. ${questions[index].title}'),
          )),
          onTap: () => _onQuestionSelected(questions[index].routeName),
        );
      },),
    );
  }
}

