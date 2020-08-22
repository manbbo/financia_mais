import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

abstract class RequestFrame {
  ///(AUTOFILLED, REQUIRED) MainURL: URL da qual vem os requests
  final String mainURL = "https://gateway.gr1d.io/";
  ///(REQUIRED) URL: Usado para ser a URL do request
  String URL,
         ///REQUEST_BODY: Usado para ser o body, quando necessario
         request_body,
         ///(REQUIRED) KEY: Usado para fazer o request e autenticar
         api_key,
         ///(REQUIRED) É basicamente o que vai na URL de requerimento
         method;

  Future<http.Response> getFunction();
  Future<http.Response> putFunction();
  Future<http.Response> postFunction();
  Future<http.Response> deleteFunction();
}