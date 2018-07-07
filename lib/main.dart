import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import './ui/home.dart';

void main() async {
  List facultyData = await _getFacultyData();
  List courseData = await _getCourseData();

  SystemChrome
      .setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(new MaterialApp(
      home: Home(facultyData, courseData),
    ));
  });
}

Future<List> _getFacultyData() async {
  String url = 'http://209.97.157.66/DATA/UGA/MIS/FACULTY';

  http.Response response;
  response = await http.get(url);
  return json.decode(response.body);
}

Future<List> _getCourseData() async {
  String url = 'http://209.97.157.66/DATA/UGA/MIS/COURSES';

  http.Response response;
  response = await http.get(url);
  return json.decode(response.body);
}
