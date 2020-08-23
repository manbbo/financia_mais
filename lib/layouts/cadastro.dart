import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool changed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(110),
                    )
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 35,
                            right: 140,
                          ),
                          child: Text('Dados empresa:',
                            style: TextStyle(
                                fontFamily: '',
                                fontSize: 25
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
              new Container(height: 15),
              Container(
                height: MediaQuery.of(context).size.height/1.5,
                width: MediaQuery.of(context).size.width/1,
                padding: EdgeInsets.only(top: 0, left: 20, bottom: 4, right: 1, ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4, right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.person_outline, color: Colors.grey,),
                            hintText:'Nome empresarial:',

                          )
                      ),
                    ),
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4, right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.person_outline, color: Colors.grey,),
                            hintText:'Nome fantasia:',

                          )
                      ),
                    ),
                    new Container(height: 15),
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      margin: EdgeInsets.only(top: 25),
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4,right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),

                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.local_phone, color: Colors.grey,),
                            hintText:'Telefone:',

                          )
                      ),
                    ),
                    new Container(height: 15),
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4, right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.school, color: Colors.grey,),
                            hintText:'CNPJ:',

                          )
                      ),
                    ),
                    new Container(height: 15),
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4, right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.contacts, color: Colors.grey,),
                            hintText:'Nire:',

                          )
                      ),
                    ),
                    new Container(height: 15),
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4, right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.vpn_key, color: Colors.grey,),
                            hintText:'Tipo empresa:',

                          )
                      ),
                    ),
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4, right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.vpn_key, color: Colors.grey,),
                            hintText:'Cargo cadastrante:',
                          )
                      ),
                    ),
                    new Container(height: 15),

                  ]
                ),
              )
            ],
          ),
        )
    );
  }
}
