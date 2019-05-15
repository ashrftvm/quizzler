import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzler'),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          color: Colors.grey[900],
          child: SafeArea(
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                'Your Question goes here',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  print('True pressed');
                },
                color: Colors.green,
                child: Text(
                  'True',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  print('False pressed');
                },
                color: Colors.red,
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              Icon(
                Icons.close,
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
