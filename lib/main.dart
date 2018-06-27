import 'package:flutter/material.dart';
import './ui/home.dart';
import 'package:flutter/services.dart';

void main() async {
  SystemChrome
      .setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(new MaterialApp(
      home: Home(),
    ));
  });
}
