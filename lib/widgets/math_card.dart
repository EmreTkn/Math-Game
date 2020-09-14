import 'package:flutter/material.dart';
import 'package:math_game/models/packages_math.dart';

// ignore: must_be_immutable
class MathCard extends StatefulWidget {
  final List<Keko> mathCard;
  int index;
  int iconSelector;
  Color color;
  

  MathCard(this.mathCard, this.index, this.iconSelector,this.color);

  @override
  _MathCardState createState() => _MathCardState();
}

class _MathCardState extends State<MathCard> {
  @override
  Widget build(BuildContext context) {
    return 
    
    
      Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          child: Card(
            color: widget.color,
              borderOnForeground: true,
              elevation: 10,
              
              
              child: Row(children: [
                Text(
                  "${widget.mathCard[widget.index].number1}",
                  style: Theme.of(context).textTheme.title,
                ),
                IconSelector(widget.iconSelector),
                Text(
                  "${widget.mathCard[widget.index].number2}",
                  style: Theme.of(context).textTheme.title,
                ),
              ])),
        
    ),
      );
  }
}

// ignore: must_be_immutable
class IconSelector extends StatelessWidget {
  int iconNumber;
  Image iconName;
  IconSelector(this.iconNumber);

  @override
  Widget build(BuildContext context) {
    _calculateIcon();
    return IconButton(icon: iconName, onPressed: null,);
  }

  void _calculateIcon() {
    if (iconNumber == 0) {
      iconName = Image.asset(
        'assets/plus.jpg',
        width: 20,
        height: 30,
      );
    } else if (iconNumber == 1) {
      iconName = Image.asset(
        'assets/eksi.jpg',
        width: 20,
        height: 30,
      );
    } else if (iconNumber == 2) {
      iconName = Image.asset(
        'assets/divine.jpg',
        width: 20,
        height: 30,
      );
    } else if(iconNumber==3) {
      iconName=Image.asset(
        'assets/multip.jpg',
        width: 18,
        height: 18,
      );
    }
  }
}
