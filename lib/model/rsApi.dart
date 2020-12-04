import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;

class RsApi{
  static const baseUrl = "https://stg-api.rockspoon.io/";
  static const key = "56e379ffa58d2ac1a854abd75b2d76e5fa4b54e551332c83d7c87b3c2fd3caeada916dc330bab3cde7e72114874666cb6e94bd5c6e2b54fd1fbb41a99a9b85d7a3be2e2b1f8e5ba7ed75fbd170d0efaefe61d9b851815771d55048a53ebe34e0";
  static const detailEndpoint = "catalog/consumer/item/";
  static const String listEndpoint = "search/v2/composed/";

  Map<String,String> _headers;

  RsApi() {
    this._headers = {
      'Accept': 'application/json',
      'key': key
    };
  }

  Future<http.Response> get(String endpoint) async{
    return await http.get(
      baseUrl + endpoint,
      headers: this._headers,
    );
  }

  Future<http.Response> post(String endpoint, Map data) async{
    return await http.post(
      baseUrl + endpoint,
      headers: this._headers,
      body: json.encode(data ?? "{}")
    );
  }

}