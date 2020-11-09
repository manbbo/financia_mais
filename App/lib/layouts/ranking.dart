import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Ranking extends StatefulWidget {
  @override
  _RankingState createState() => _RankingState();
}

class _RankingState extends State<Ranking> {

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 40,
      color: Colors.cyanAccent,
      child:Row(
        children: <Widget>[
          new Container(
            child: Image.asset('assets/images/torres.png'),
            width: 380,
            height: 390,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}