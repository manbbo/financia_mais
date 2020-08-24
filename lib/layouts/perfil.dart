import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class perfil extends StatefulWidget {
  @override
  _perfilState createState() => _perfilState();
}

class _perfilState extends State<perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: new Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Padaria Alemã",
                 style: TextStyle(
                   fontSize:20,
                 )
                ),
                ClipRect(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset('assets/images/psyche.png'),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width-9,
                    height: 480,
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
                              Text("Dados bancarios"),
                              new Container(
                                width: 350,
                                height: 300,
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
                  width: MediaQuery.of(context).size.width-100,
                  height: MediaQuery.of(context).size.height -400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}