import 'dart:convert';

import 'package:demo/apicall/NetworkCallMethods.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';


class ApiCall {
  static String URL = "http://192.168.1.4:8081/";

  Future<Response> itemCall(data) {
    String url = URL;

    Map<String, String> header = Map();
    header["Content-Type"] = "application/protobuf";

    var body = data;

    return NetworkCallMethods.networkCall.post(url, header, body);
  }

  Future<Response> itemsCall(data) {
    String url = URL+"items";

    Map<String, String> header = Map();
    header["Content-Type"] = "application/protobuf";

    var body = data;

    return NetworkCallMethods.networkCall.post(url, header, body);
  }


}

