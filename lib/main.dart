import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:math_game/models/score_time.dart';
import 'package:math_game/widgets/game_screen.dart';

void main() {
  runApp(Phoenix(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Math App!",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;
  Timer _timer;

  List<TimeCount> count = [
    TimeCount(
      counter: 10,
      score: 0,
    )
  ];

  void _startTimer() {
    count[0].counter = 10;
    count[0].timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (count[0].counter > 0) {
          count[0].counter--;
        } else {
          count[0].timer.cancel();
        }
      });
    });
    content = 1;
  }

  int content = 0;

  @override
  Widget build(BuildContext context) {
    if (count[0].counter == 0) {
      content = 0;
    }
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.keyboard_backspace),
              onPressed: () {
                Phoenix.rebirth(context);
              },
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // Text("Score: ${_myKeko[0].number1}"),
            Text("Time: ${count[0].counter}"),
            //Text("Missed: ${_myKeko[0].number1}"),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.pause), onPressed: () {})
        ],
      ),
      body: content == 0
          ? Center(
              child: RaisedButton(
                onPressed: () {
                  _startTimer();
                },
                child: Text("Start!"),
              ),
            )
          : GameMath(),
    );
  }
}
