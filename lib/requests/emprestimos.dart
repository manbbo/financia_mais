import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class Emprestimos extends StatelessWidget(){

      @override
      Widget build(BuildContext context) {
      return new Scaffold(
        body: new Center(
          child: new RaisedButton(
            child: new Text("emprestimo"),
        //  onPressed: getFunction,
           ),
          ),
        );
      }

      Future<Response> deleteFunction() async {
      // TODO: implement deleteFunction
      throw UnimplementedError();
      }

      @override
      Future<Response> getFunction() async {
            // TODO: implement putFunction
            http.Response response = await http.get(
            Uri.encodeFull("https://gateway.gr1d.io/sandbox/easycredito/v2"),
          headers: {HttpHeaders.authorizationHeader: "133a0d44-7248-4083-8abd-b822ae509683"},
          );
            final responseJson = json.decode(response.body);

            return Response.fromJson(responseJson);
      }

      @override
      Future<Response> postFunction() async {
           // TODO: implement postFunction
            throw UnimplementedError();
      }

      @override
      Future<Response> putFunction() async{

      }
  }
