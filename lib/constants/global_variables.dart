import 'package:flutter/material.dart';
import 'dart:io';
import 'package:dotenv/dotenv.dart';

var env = DotEnv(includePlatformEnvironment: true)..load();
String uri = "http://10.0.2.2:3000";

class GlobalVariables {
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 255, 17, 79),
      Color.fromARGB(255, 255, 0, 161),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(121, 4, 235, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Color(0x110458);
  static const unselectedNavBarColor = Colors.black87;
}
