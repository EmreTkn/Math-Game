import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:math_game/main.dart';
import 'package:math_game/models/controller_chekc.dart';
import 'package:math_game/models/list_of_keko1.dart';
import 'package:math_game/models/packages_math.dart';
import 'package:math_game/models/score_list.dart';

import 'math_card.dart';

class GameMath extends StatefulWidget {
  @override
  _GameMathState createState() => _GameMathState();
}

class _GameMathState extends State<GameMath> {
  List<Keko> myKeko = [
    Keko(
      number1: new Random().nextInt(30) + 1,
      number2: new Random().nextInt(30) + 1,
      operatorselector: new Random().nextInt(4),
      result: new Random().nextInt(250),
    ),
    Keko(
      number1: new Random().nextInt(30) + 1,
      number2: new Random().nextInt(30) + 1,
      operatorselector: new Random().nextInt(4),
      result: 1,
    ),
    Keko(
      number1: new Random().nextInt(30) + 1,
      number2: new Random().nextInt(30) + 1,
      operatorselector: new Random().nextInt(4),
      result: new Random().nextInt(250),
    ),
    Keko(
      number1: new Random().nextInt(30) + 1,
      number2: new Random().nextInt(30) + 1,
      operatorselector: new Random().nextInt(4),
      result: 1,
    ),
    Keko(
      number1: new Random().nextInt(30) + 1,
      number2: new Random().nextInt(30) + 1,
      operatorselector: new Random().nextInt(4),
      result: new Random().nextInt(250),
    ),
    Keko(
      number1: new Random().nextInt(30) + 1,
      number2: new Random().nextInt(30) + 1,
      operatorselector: new Random().nextInt(4),
      result: 1,
    ),
    Keko(
      number1: new Random().nextInt(30) + 1,
      number2: new Random().nextInt(30) + 1,
      operatorselector: new Random().nextInt(4),
      result: new Random().nextInt(250),
    ),
    Keko(
      number1: new Random().nextInt(30) + 1,
      number2: new Random().nextInt(30) + 1,
      operatorselector: new Random().nextInt(4),
      result: 1,
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    _createRandomNumber();

    //_startTimer();
    return count[0].counter != 0
        ? Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 130,
                      height: 300,
                      child: ListView(
                        children: [
                          GestureDetector(
                              onTap: () {
                                _deneme(list[0].number, list);
                              },
                              child: Visibility(
                                visible: list[list[0].number].karo,
                                child: MathCard(
                                    myKeko,
                                    list[0].number,
                                    myKeko[list[0].number].operatorselector,
                                    list[list[0].number].bro),
                              )),
                          GestureDetector(
                            onTap: () {
                              _deneme(list[1].number, list);
                            },
                            child: Visibility(
                              visible: list[list[1].number].karo,
                              child: MathCard(
                                myKeko,
                                list[1].number,
                                myKeko[list[1].number].operatorselector,
                                list[list[1].number].bro,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _deneme(
                                list[2].number,
                                list,
                              );
                            },
                            child: Visibility(
                              visible: list[list[2].number].karo,
                              child: MathCard(
                                myKeko,
                                list[2].number,
                                myKeko[list[2].number].operatorselector,
                                list[list[2].number].bro,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _deneme(list[3].number, list);
                            },
                            child: Visibility(
                              visible: list[list[3].number].karo,
                              child: MathCard(
                                myKeko,
                                list[3].number,
                                myKeko[list[3].number].operatorselector,
                                list[list[3].number].bro,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 300,
                      child: ListView(
                        children: <Widget>[
                          Visibility(
                            visible: list[list[4].number].karo,
                            child: GestureDetector(
                              onTap: () {
                                _deneme(list[4].number, list);
                              },
                              child: MathCard(
                                myKeko,
                                list[4].number,
                                myKeko[list[4].number].operatorselector,
                                list[list[4].number].bro,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: list[list[5].number].karo,
                            child: GestureDetector(
                              onTap: () {
                                _deneme(list[5].number, list);
                              },
                              child: MathCard(
                                myKeko,
                                list[5].number,
                                myKeko[list[5].number].operatorselector,
                                list[list[5].number].bro,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => _deneme(list[6].number, list),
                            child: Visibility(
                              visible: list[list[6].number].karo,
                              child: MathCard(
                                myKeko,
                                list[6].number,
                                myKeko[list[6].number].operatorselector,
                                list[list[6].number].bro,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => _deneme(list[7].number, list),
                            child: Visibility(
                              visible: list[list[7].number].karo,
                              child: MathCard(
                                myKeko,
                                list[7].number,
                                myKeko[list[7].number].operatorselector,
                                list[list[7].number].bro,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                onPressed: () {
                  count[0].content = 0;
                  count[0].counter = 0;
                  count[0].score = 0;
                  count[0].missed = 0;
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  for (var i = 0; i < 8; i++) {
                    list[i].karo = true;
                  }
                  for (var i = 0; i < 8; i++) {
                    list[i].bro = Colors.white;
                  }
                  for (var i = 0; i < 8; i++) {
                    list[i].index = 0;
                  }
                },
                child: Text("Restart"),
              ),
            ],
          )
        : Center(
            child: Column(
              children: [
                Text("SCORE: ${count[0].score}"),
                Text("MİSSED: ${count[0].missed}"),
                RaisedButton(
                  onPressed: () {
                    count[0].content = 0;
                    count[0].counter = 0;
                    count[0].score = 0;
                    count[0].missed = 0;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                    for (var i = 0; i < 8; i++) {
                      list[i].karo = true;
                    }
                    for (var i = 0; i < 8; i++) {
                      list[i].bro = Colors.white;
                    }
                    for (var i = 0; i < 8; i++) {
                      list[i].index = 0;
                    }
                  },
                  child: Text("Restart"),
                ),
              ],
            ),
          );
  }

  var score = 0;
  var resultIndex;
  void _deneme(var indexcro, List<Keko1> x) {
    if (x[indexcro].index == 0) {
      setState(() {
        x[indexcro].bro = Colors.blueGrey;
        resultIndex = myKeko[indexcro].result;
      });

      for (var i = 0; i < 8; i++) {
        if (i != indexcro) {
          setState(() {
            x[i].index = 1;
          });
        }
      }
    }
    if (x[indexcro].index == 1) {
      if (resultIndex == myKeko[indexcro].result) {
        if (indexcro == 0 || indexcro == 1) {
          setState(() {
            list[0].karo = false;
            list[1].karo = false;
            count[0].score = count[0].score + 10;
          });
        } else if (indexcro == 2 || indexcro == 3) {
          setState(() {
            list[2].karo = false;
            list[3].karo = false;
            count[0].score = count[0].score + 10;
          });
        } else if (indexcro == 4 || indexcro == 5) {
          setState(() {
            list[4].karo = false;
            list[5].karo = false;
            count[0].score = count[0].score + 10;
          });
        } else if (indexcro == 6 || indexcro == 7) {
          setState(() {
            list[6].karo = false;
            list[7].karo = false;
            count[0].score = count[0].score + 10;
          });
        }

        for (var k = 0; k < 8; k++) {
          setState(() {
            list[k].bro = Colors.white;
            list[k].index = 0;
          });
        }
      } else if (resultIndex != myKeko[indexcro].result) {
        for (var k = 0; k < 8; k++) {
          setState(() {
            list[k].bro = Colors.white;
            list[k].index = 0;
          });
        }
        if (count[0].score != 0) {
          count[0].score = count[0].score - 10;
        }
        count[0].missed = count[0].missed + 1;
      }
    }
  }

  void _createRandomNumber() {
    int x = 0;
    int y = 1;
    int z = 40;

    for (var i = 0; i < 4; i++) {
      while (myKeko[x].result != myKeko[y].result) {
        myKeko[x].number1 = new Random().nextInt(z) + 1;
        myKeko[x].number2 = new Random().nextInt(z) + 1;
        myKeko[y].number1 = new Random().nextInt(z) + 1;
        myKeko[y].number2 = new Random().nextInt(z) + 1;

        if (myKeko[x].operatorselector == 0) {
          myKeko[x].result = myKeko[x].number1 + myKeko[x].number2;
        }
        if (myKeko[y].operatorselector == 0) {
          myKeko[y].result = myKeko[y].number1 + myKeko[y].number2;
        }
        if (myKeko[x].operatorselector == 1) {
          while (myKeko[x].number1 < myKeko[x].number2) {
            myKeko[x].number1 = new Random().nextInt(z);
            myKeko[x].number2 = new Random().nextInt(z);
          }
          myKeko[x].result = myKeko[x].number1 - myKeko[x].number2;
        }
        if (myKeko[y].operatorselector == 1) {
          while (myKeko[y].number1 < myKeko[y].number2) {
            myKeko[y].number1 = new Random().nextInt(z);
            myKeko[y].number2 = new Random().nextInt(z);
          }
          myKeko[y].result = myKeko[y].number1 - myKeko[y].number2;
        }
        if (myKeko[x].operatorselector == 2) {
          while (myKeko[x].number1 % myKeko[x].number2 != 0) {
            myKeko[x].number1 = new Random().nextInt(z) + 1;
            myKeko[x].number2 = new Random().nextInt(z) + 1;
          }

          myKeko[x].result = myKeko[x].number1 / myKeko[x].number2;
        }
        if (myKeko[y].operatorselector == 2) {
          while (myKeko[y].number1 % myKeko[y].number2 != 0) {
            myKeko[y].number1 = new Random().nextInt(z) + 1;
            myKeko[y].number2 = new Random().nextInt(z) + 1;
          }

          myKeko[y].result = myKeko[y].number1 / myKeko[y].number2;
        }
        if (myKeko[x].operatorselector == 3) {
          while (myKeko[x].number1 > 15) {
            myKeko[x].number1 = new Random().nextInt(15);
          }
          while (myKeko[x].number2 > 15) {
            myKeko[x].number2 = new Random().nextInt(15);
          }
          myKeko[x].result = myKeko[x].number1 * myKeko[x].number2;
        }
        if (myKeko[y].operatorselector == 3) {
          while (myKeko[y].number1 > 15) {
            myKeko[y].number1 = new Random().nextInt(15);
          }
          while (myKeko[y].number2 > 15) {
            myKeko[y].number2 = new Random().nextInt(15);
          }

          myKeko[y].result = myKeko[y].number1 * myKeko[y].number2;
        }
      }
      x = x + 2;
      y = y + 2;
    }
  }
}
