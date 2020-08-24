import 'package:financia_mais/layouts/screens/clippers.dart';
import 'package:financia_mais/layouts/screens/mapping.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MeusInvestimentos extends StatefulWidget {
  @override
  _MeusInvestimentosState createState() => _MeusInvestimentosState();
}

class _MeusInvestimentosState extends State<MeusInvestimentos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Stack(
        children: [
          Positioned(child: ClipPath(
            clipper: CustomPageClipper(),
            child: Container(
              color: Color.fromRGBO(231, 254, 248, 1),
              width: MediaQuery.of(context).size.width,
              height: 500,
            ),
          ),
          top: MediaQuery.of(context).size.height-400,),
          new Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 50),
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
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(top: 40),
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
                                alignment: Alignment.center,
                                child:new Container(
                                  width: 200,
                                  height: 100,
                                  child: Image.asset('assets/images/moeda1.png'),
                                ),
                              ),
                              new Container(
                                child: Text("SOLICITAR \nINVESTIMENTO", style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.cyanAccent
                                ),
                                  softWrap: true, textAlign: TextAlign.center,),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return Mapping(lat: -10.239423, lon: -38.0392393,);
                  }))
                },
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(top: 40),
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
                                alignment: Alignment.center,
                                child:new Container(
                                  width: 200,
                                  height: 100,
                                  child: Image.asset('assets/images/seta.png'),
                                ),
                              ),
                              new Container(
                                child: Text("DADOS", style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.cyanAccent
                                ),
                                  softWrap: true, textAlign: TextAlign.center,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {}, //TELA DE DADOS
              )
            ],
          )
        ],
      ),
    );
  }
}