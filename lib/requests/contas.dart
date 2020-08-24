import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:http/src/response.dart';
import 'package:http/http.dart' as http;
import 'package:financia_mais/requests/requestframe.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Contas extends StatefulWidget {
  @override
  _ContasState createState() => _ContasState();
}

class _ContasState extends State<Contas> {
  bool isLoading = true;
  List list = List();
  String responseJson;

  TextEditingController myController = TextEditingController();

  @override
  void initState() {
    postContas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: [
          new Center(
            child: isLoading? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: myController,
                ),
                RaisedButton(
                  child: Text("FETCH"),
                  onPressed: () => getConta(myController.text),
                )
              ],
            ) :
            Text("${list[9]['Name']}"),
          ),
        ],
      )
    );
  }

  Future <String> postContas() async {
    Map body = {
      "Data": {
        "Permissions": [
          "ReadAccountsBasic",
          "ReadAccountsDetail",
          "ReadBalances",
          "ReadBeneficiariesBasic",
          "ReadBeneficiariesDetail",
          "ReadDirectDebits",
          "ReadTransactionsBasic",
          "ReadTransactionsCredits",
          "ReadTransactionsDebits",
          "ReadTransactionsDetail",
          "ReadProducts",
          "ReadStandingOrdersDetail",
          "ReadProducts",
          "ReadStandingOrdersDetail",
          "ReadStatementsDetail",
          "ReadParty",
          "ReadOffers",
          "ReadScheduledPaymentsBasic",
          "ReadScheduledPaymentsDetail",
          "ReadPartyPSU"
        ]
      },
      "Risk": {}
    };

    http.Response response = await http.post(
        Uri.encodeFull(
            "https://gateway.gr1d.io/sandbox/tecban/contas/v1/account-access-consents"),
        headers: {
          "X-API-Key": '08d4308e-9a90-45a2-a2ae-42ed67984172',
          "Content-Type": "application/json; charset=UTF-8",
          "accept": "application/json",
          'cache-control': 'max-age=0, no-cache, no-store, must-revalidate',
          'expires': 'Wed, 11 Jan 1984 05:00:00 GMT',
          'pragma': 'no-cache'
        },
        body: jsonEncode(body));
    final responseJson = json.decode(response.body);
    print(responseJson);

    return responseJson;
  }
  //aac-3606cdfe-840f-4511-8658-0f03ed8c0b3a
  getConta(String getResponse) async{
    setState(() {
      isLoading = true;
    });
    //[9]['Name']
        http.Response response = await http.get(
        Uri.encodeFull(
            "https://gateway.gr1d.io/sandbox/tecban/contas/v1/account-access-consents/${getResponse}"),
        headers: {
          "X-API-Key": '08d4308e-9a90-45a2-a2ae-42ed67984172',
          "content-Type": "application/json; charset=UTF-8",
          "accept": "application/json",
          'content-length': '824'
        });
    final responseJson = json.decode(response.body);
    print(responseJson);
    //return http.Response.fromJson(responseJson);

        if (response.statusCode == 200) {
          list = responseJson as List;
          setState(() {
            isLoading = false;
          });
        } else {
          print('Failed to load');
        }
  }
}
