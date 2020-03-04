import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkCallMethods {

  static final networkCall = NetworkCallMethods();

  Future<http.Response> get(url, header) {
    return http.get(url, headers: header);
  }

  Future<http.Response> post(url, header, body) {
    return http.post(url, headers: header, body: body);
  }

  Future<http.Response> put(url, header, body) {
    return http.put(url, headers: header, body: body);
  }

  Future<http.Response> delete(url, header, body) {
    return http.delete(url, headers: header);
  }

  Future<http.Response> patch(url, header, body) {
    return http.patch(url, headers: header, body: body);
  }
}
