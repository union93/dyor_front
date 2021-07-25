import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;



Future<List<Summary>> fetchCoin() async {
  final response = await http.get('http://ec2-3-36-112-202.ap-northeast-2.compute.amazonaws.com:5000/mainPageTokens/volume_desc');
  if(response.statusCode == 200) {
    var parsed = json.decode(response.body);
    List jsonResponse = parsed["mainpage_tokens"] as List;

    return jsonResponse.map((job) => new Summary
  }

}
