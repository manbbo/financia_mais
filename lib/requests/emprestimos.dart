import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class Response {
  final int cpf;
  final int name;
  final String birthday;
  final int email;
  final int phone;
  final String zipCode;
  final int hasCreditCard;
  final int hasRestriction;
  final String hasOwnHouse;
  final int hasVehicle;
  final int logData;
  final String latitude;
  final String occurrenceDate;
  final int longitude;
  final int userAgent;
  final String ip;
  final String mac;


  Response({this.cpf, this.name, this.birthday, this.email, this.phone,
    this.zipCode, this.hasCreditCard, this.hasRestriction, this.hasOwnHouse, this.hasVehicle,
    this.logData, this.latitude,this.longitude,this.occurrenceDate,this.userAgent,this.ip,this.mac });

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
        cpf:json['cpf'],
        name:json['name'],
        birthday:json['birthday'],
        email:json['email'],
        phone:json['phone'],
        zipCode:json['zipCode'],
        hasCreditCard: json['hasCreditCard'],
        hasRestriction:json['hasRestriction'] ,
        hasOwnHouse:json['hasOwnHouse'] ,
        hasVehicle:json['hasVehicle'] ,
        logData: {
          latitude: json['latitude'],
          longitude: json['longitude'],
          occurrenceDate: json['occurrenceDate'],
          userAgent: json['userAgent'],
          ip: json['ip'],
          mac: json['mac'],
        }
    );
  }

  class Emprestimos extends StatelessWidget{

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
