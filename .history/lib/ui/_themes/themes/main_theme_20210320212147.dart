import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme_interface.dart';

final double _fontSize = 14.0;

class MainTheme implements AppTheme {
  static final _defaultTheme = ThemeData();
  static final _primaryColor = Color(0xff3C3E44);
  static final _backgroundColor = Color(0xff24282F);
  // static final Color _accentColor = Colors.blue.shade600;
  @override
  ThemeData material = ThemeData(
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: _primaryColor,
    // accentColor: _accentColor,
    scaffoldBackgroundColor: _backgroundColor,
    backgroundColor: Colors.white,
    cardColor: _primaryColor,
    errorColor: Colors.red.shade600,
    inputDecorationTheme: _defaultTheme.inputDecorationTheme.copyWith(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(1.0),
        borderSide: BorderSide(
          width: 1.0,
          color: _primaryColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(1.0),
        borderSide: BorderSide(
          width: 1.0,
          color: _accentColor,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(1.0),
        borderSide: BorderSide(
          width: 1.0,
          color: Colors.grey,
        ),
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      buttonColor: _accentColor,
      splashColor: Colors.blue.shade400,
      textTheme: ButtonTextTheme.primary,
      padding: EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 8.0,
      ),
    ),
    textTheme: _defaultTheme.textTheme.copyWith(
      headline2: _defaultTheme.textTheme.headline5.copyWith(
        fontSize: 21.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      headline3: _defaultTheme.textTheme.headline5.copyWith(
        fontSize: 19.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      headline4: _defaultTheme.textTheme.headline6.copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      headline5: _defaultTheme.textTheme.headline5.copyWith(
        fontSize: 17.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      headline6: _defaultTheme.textTheme.headline6.copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      subtitle1: _defaultTheme.textTheme.subtitle1.copyWith(
        color: Colors.black,
        fontFamily: 'Inter',
      ),
      subtitle2: _defaultTheme.textTheme.subtitle2.copyWith(
        color: Colors.black,
        fontSize: 12,
        fontFamily: 'Inter',
      ),
      bodyText1: _defaultTheme.textTheme.bodyText1.copyWith(
        color: Colors.black,
        fontSize: _fontSize,
      ),
      bodyText2: _defaultTheme.textTheme.bodyText2.copyWith(
        color: Colors.black,
        fontSize: _fontSize,
      ),
      button: _defaultTheme.textTheme.button.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      caption: _defaultTheme.textTheme.caption.copyWith(
        color: Colors.black,
        fontSize: 12,
      ),
      overline: _defaultTheme.textTheme.overline.copyWith(
        color: Colors.black,
        fontSize: 10,
      ),
    ),
  );

  @override
  CupertinoThemeData cupertino = CupertinoThemeData();

  @override
  AppThemeData get data => _materialData;
  // AppThemeData get data => Platform.isIOS ? _cupertinoData : _materialData;

  final AppThemeData _materialData = MainMaterialData();
  // AppThemeData _cupertinoData = MainMaterialData();
}

class MainMaterialData implements AppThemeData {
  static final _defaultTheme = ThemeData();

  @override
  Color primaryColorFaded = Colors.grey;

  @override
  TextStyle subtitle3 = _defaultTheme.textTheme.subtitle2.copyWith(
    color: Colors.black,
    fontSize: 11.0,
  );
  @override
  TextStyle subtitle4 = _defaultTheme.textTheme.subtitle2.copyWith(
    color: Colors.black,
    fontSize: 10.0,
  );

  @override
  TextStyle headline7 = _defaultTheme.textTheme.headline6.copyWith(
    color: Colors.black,
    fontSize: 15.0,
  );
}
