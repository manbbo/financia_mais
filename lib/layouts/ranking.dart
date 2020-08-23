import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ranking extends StatefulWidget {
  @override
  _rankingState createState() => _rankingState();
}

class _rankingState extends State<ranking> {

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