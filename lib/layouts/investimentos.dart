import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Investimentos extends StatefulWidget {
  @override
  _InvestimentosState createState() => _InvestimentosState();
}

class _InvestimentosState extends State<Investimentos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: new Stack(
        children: <Widget>[
          new Positioned(
            child: Text.rich(new TextSpan( style: TextStyle(
                fontSize: 20,
            ))),
          ),
          Container(
            padding: EdgeInsets.only(top: 320),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width-30,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(color: Colors.grey, blurRadius: 10.0, offset: Offset(1.0, 6.0), spreadRadius: 1)
                        ]
                    ),
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: Row(
                            children: <Widget>[
                              new Container(
                                width: 340,
                                height: 100,
                                child: Image.asset('assets/images/moeda.png'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                new Container(height: 10,),
                new Container(
                    padding: EdgeInsets.only(left:15),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height -400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.only(top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width-30,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(color: Colors.grey, blurRadius: 10.0, offset: Offset(1.0, 6.0), spreadRadius: 1)
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Column( //primeira coluna
                          children: <Widget>[
                              new Container(
                                width: 500,
                                height: 50,
                                child: Image.asset('assets/images/simboloDinheiro.png'),
                              ),
                              new Container(
                                width: 500,
                                height: 50,
                                child: Image.asset('assets/images/valor.png'),
                              ),
                              Text(
                                "Meta",
                                style: TextStyle(),
                              ),
                              new Container(
                                width: 500,
                                height: 50,
                                child: Image.asset('assets/images/progresso.png'),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                new Container(height: 10,),
                new Container(
                  padding: EdgeInsets.only(left:15),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 530),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width-30,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(color: Colors.grey, blurRadius: 10.0, offset: Offset(1.0, 6.0), spreadRadius: 1)
                        ]
                    ),
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: Row(
                            children: <Widget>[
                              new Container(
                                width: 350,
                                height: 150,
                                child: Image.asset('assets/images/seta.png'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left:15),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height -300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}