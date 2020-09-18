import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:math_game/models/score_time.dart';
import 'package:math_game/widgets/game_screen.dart';

import 'models/score_list.dart';

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

  void _startTimer() {
    count[0].counter = 15;
    count[0].timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (count[0].counter > 0) {
          count[0].counter--;
        } else {
          count[0].timer.cancel();
        }
      });
    });
    count[0].content = 1;
  }

  int content = 0;

  @override
  Widget build(BuildContext context) {
    if (count[0].counter == 0) {
      content = 0;
    }
    return Scaffold(
      appBar: AppBar(
       
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
             Text("Score: ${count[0].score}"),
            Text("Time: ${count[0].counter}"),
            Text("Missed: ${count[0].missed}"),
          ],
        ),
        actions: <Widget>[
         
        ],
      ),
      body: count[0].content == 0
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
