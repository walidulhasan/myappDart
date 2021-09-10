import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void questionAnswers() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  var _answarQuestions = [
    'What\'s your favourit color?',
    'What\'s your favorite Country?',
    'What\'s your favorite Person?',
    'What\'s your favorite Foods?',
    'What\'s your favorite Fish?',
    'What\'s your favorite Play?',
    'What\'s your favorite Game?'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: Colors.white10,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('my App'),
        ),
        body: Column(
          children: <Widget>[
            Question(_answarQuestions[_questionIndex]),
            ElevatedButton(
              onPressed: questionAnswers,
              child: Text('Colors'),
            ),
            ElevatedButton(onPressed: questionAnswers, child: Text('Answer 4')),
            ElevatedButton(onPressed: questionAnswers, child: Text('Answer 4')),
            ElevatedButton(
                onPressed: () => {
                      print('Hello Dear'),
                    },
                child: Text('Answer 4')),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
