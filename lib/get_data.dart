import 'dart:convert';

import 'package:flutter/material.dart';
import 'main.dart';
import 'package:http/http.dart';

int workoutNum = 0;
Future<int> funkcja() async {
  var data = await fetchData();
  var num = 0;
  print(workoutNum);
  return workoutNum = data['users'][num]['userTrainingCount'];
}

Future<Map<String, dynamic>> fetchData() async {
  final response = await get(
      Uri.parse('https://dl.dropbox.com/s/rdtx8uo2mlnlpz4/test.json?dl=0'));
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to get the data');
  }
}
