import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:http/src/response.dart';
import 'package:http/http.dart' as http;
import 'package:financia_mais/requests/requestframe.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Contas extends RequestFrame {
  @override
    Widget build(BuildContext context) {
      return new Scaffold(
        body: new Center(
          child: new RaisedButton(
            child: new Text("emprestimo"),
            onPressed: getFunction,
          ),
        ),
      );
    }

  Future<Response> deleteFunction() {
    // TODO: implement deleteFunction
    throw UnimplementedError();
  }

  @override
  Future<Response> getFunction() async {
    // TODO: implement putFunction
    http.Response response = await http.get(
      Uri.encodeFull(" https://gateway.gr1d.io/sandbox/tecban/contas/v1"),
      headers: {HttpHeaders.authorizationHeader: "17fb7973-45b5-4a6a-84b0-a18ea2daf825"},
    );
    final responseJson = json.decode(response.body);

    return Response.fromJson(responseJson);
  }

  @override
  Future<Response> postFunction() {
    // TODO: implement postFunction
    throw UnimplementedError();
  }

  @override
  Future<Response> putFunction() {
    // TODO: implement putFunction
    throw UnimplementedError();
  }

}