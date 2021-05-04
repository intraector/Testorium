import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  late ThemeData material;
  late CupertinoThemeData cupertino;
  AppThemeData get data;
}

abstract class AppThemeData {
  Color primaryColorFaded;
  TextStyle subtitle3;
  TextStyle subtitle4;
  TextStyle headline7;
}
