import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:financia_mais/layouts/cadastro.dart';
import 'package:financia_mais/layouts/investimentos.dart';
import 'package:financia_mais/layouts/ranking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class Emprestimos extends StatefulWidget {
  TextEditingController _textValueController = TextEditingController(text: '0,00'),
      _textDateController = TextEditingController(text: '0,00');

  @override
  _EmprestimosState createState() => _EmprestimosState();
}

class _EmprestimosState extends State<Emprestimos> {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromRGBO(55,	239,	223, 1),
      body: new Stack(
        children: [
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Container(
              height: 20,
            ),
              Container(
                width: 80,
                height: 80,
                child: Image.asset('assets/images/moeda.png'),
              ),Container(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Quanto o investimento mínimo que deseja?", style: TextStyle(fontSize: 30, color: Colors.white, ), softWrap: true, textAlign: TextAlign.center,),
              ),
              Container(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("R\$", style: TextStyle(fontSize: 40, color: Colors.white),),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: TextFormField(
                      controller: this.widget._textValueController,
                      style: TextStyle(fontSize: 40,),
                      keyboardType: TextInputType.numberWithOptions(
                          decimal: true,
                          signed: false
                      ),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'^\d+\,?\d{0,2}')),
                        FilteringTextInputFormatter.singleLineFormatter,
                      ], // Only numbers can be entered
                    ),
                  ),
                ],
              ),
              Container(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Qual o prazo de Recebimento?", style: TextStyle(fontSize: 30, color: Colors.white, ), softWrap: true, textAlign: TextAlign.center,),
              ),
              Container(
                height: 20,
              ),
              Container(
                width: 170,
                height: 100,
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: () {
                      showDatePicker(context: context,
                          initialDate: _dateTime == null? DateTime.now() : _dateTime,
                          firstDate: _dateTime == null? DateTime.now() : _dateTime,
                          lastDate: DateTime(DateTime.now().year + 20, 12, 31, 23, 59, 00, 00, 00)).then((value) {
                        setState(() {
                          _dateTime = value;
                        });
                      });
                    }, child: Text(_dateTime == null? "Clique para escolher uma Data" : "${_dateTime.day.toString()}/${_dateTime.month.toString()}/${_dateTime.year.toString()}", style: TextStyle(
                    fontSize: 20
                ),
                    softWrap: true,
                    textAlign: TextAlign.center
                )
                ),
              ),
              Container(
                height: 80,
              ),
              Container(
                height: 48,
                width: 135,
                child: FlatButton(
                  child: Text("Continuar", style: TextStyle(fontSize: 20, color: Color.fromRGBO(55,	239,	223, 1)),),
                  onPressed: () {
                    postCriarEmprestimo();
                  },
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
              )
            ],
          )
        ],
      )
    );
  }

  deleteEmprestimo() async {
    // TODO: implement deleteFunction
    throw UnimplementedError();
  }

  getEmprestimo() async {

  }

  postCriarEmprestimo() async {
    Map body = {
      "cpf": "00000000191",
      "name": "Fulano d\'Tal",
      "birthday": "1992-07-25",
      "email": "fulano@email.com",
      "phone": "62987654321",
      "zipCode": "74180040",
      "hasCreditCard": true,
      "hasRestriction": true,
      "hasOwnHouse": true,
      "hasVehicle": true,
      "logData": {
        "latitude": -16.6982283,
        "longitude": -49.2581201,
        "occurrenceDate": "2019-08-21T14:31:17.459Z",
        "userAgent":
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36",
        "ip": "0.0.0.0",
        "mac": "00:00:00:00:00:00"
      }
    };

    http.Response response = await http.post(
        Uri.encodeFull(
            "https://gateway.gr1d.io/sandbox/easycredito/v2/process/signup"),
        headers: {
          "X-API-Key": '133a0d44-7248-4083-8abd-b822ae509683',
          "Content-Type": "application/json; charset=UTF-8",
          "accept": "application/json",
          'cache-control': 'max-age=0, no-cache, no-store, must-revalidate',
          'expires': 'Wed, 11 Jan 1984 05:00:00 GMT',
          'pragma': 'no-cache'
        },
        body: jsonEncode(body));
    final responseJson = json.decode(response.body);
    print(responseJson);
    //return http.Response.fromJson(responseJson);
  }

  putFunction() async {}
}

class FillFormEmprestimos extends StatefulWidget {
  @override
  _FillFormEmprestimosState createState() => _FillFormEmprestimosState();
}

class _FillFormEmprestimosState extends State<FillFormEmprestimos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 254, 248, 1),
      body: Stack(
        children: [
          IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () => Navigator.pop(context),
          padding: EdgeInsets.only(top: 30),),
          Ranking()
        ],
      ),
    );
  }
}
