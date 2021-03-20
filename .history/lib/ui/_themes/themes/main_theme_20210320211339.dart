import 'package:one_click/constants/app_screen.dart';
import 'package:one_click/ui/_themes/theme_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainTheme implements AppTheme {
  static final _defaultTheme = ThemeData();
  static final double _defaultSize = AppScreen.hPercent * 4.5;
  static final Color _primaryColor = Colors.black;
  static final Color _accentColor = Colors.blue.shade600;
  @override
  ThemeData material = ThemeData(
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    primaryColor: _primaryColor,
    accentColor: _accentColor,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    cardColor: Colors.white,
    errorColor: Colors.red.shade600,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: _defaultTheme.inputDecorationTheme.copyWith(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppScreen.hPercent * 1.7),
        borderSide: BorderSide(
          width: 1.0,
          color: _primaryColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppScreen.hPercent * 1.7),
        borderSide: BorderSide(
          width: 1.0,
          color: _accentColor,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppScreen.hPercent * 1.7),
        borderSide: BorderSide(
          width: 1.0,
          color: Colors.grey,
        ),
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppScreen.hPercent * 1.5),
      ),
      buttonColor: _accentColor,
      splashColor: Colors.blue.shade400,
      textTheme: ButtonTextTheme.primary,
      padding: EdgeInsets.symmetric(
        horizontal: AppScreen.hPercent * 5.5,
        vertical: AppScreen.hPercent * 3.7,
      ),
    ),
    textTheme: _defaultTheme.textTheme.copyWith(
      headline2: _defaultTheme.textTheme.headline5.copyWith(
        fontSize: _defaultSize * 21 / 14,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      headline3: _defaultTheme.textTheme.headline5.copyWith(
        fontSize: _defaultSize * 19 / 14,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      headline4: _defaultTheme.textTheme.headline6.copyWith(
        fontSize: _defaultSize * 18 / 14,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      headline5: _defaultTheme.textTheme.headline5.copyWith(
        fontSize: _defaultSize * 17 / 14,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      headline6: _defaultTheme.textTheme.headline6.copyWith(
        fontSize: _defaultSize * 16 / 14,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      subtitle1: _defaultTheme.textTheme.subtitle1.copyWith(
        color: Colors.black,
        fontFamily: 'Inter',
      ),
      subtitle2: _defaultTheme.textTheme.subtitle2.copyWith(
        color: Colors.black,
        fontSize: _defaultSize * 12 / 14,
        fontFamily: 'Inter',
      ),
      bodyText1: _defaultTheme.textTheme.bodyText1.copyWith(
        color: Colors.black,
        fontSize: _defaultSize,
      ),
      bodyText2: _defaultTheme.textTheme.bodyText2.copyWith(
        color: Colors.black,
        fontSize: _defaultSize,
      ),
      button: _defaultTheme.textTheme.button.copyWith(
        color: Colors.white,
        fontSize: _defaultSize * 0.9,
        fontWeight: FontWeight.bold,
      ),
      caption: _defaultTheme.textTheme.caption.copyWith(
        color: Colors.black,
        fontSize: _defaultSize * 12 / 14,
        fontFamily: 'Inter',
      ),
      overline: _defaultTheme.textTheme.overline.copyWith(
        color: Colors.black,
        fontSize: _defaultSize * 10 / 14,
        fontFamily: 'Inter',
      ),
    ),
  );

  @override
  CupertinoThemeData cupertino = CupertinoThemeData();

  @override
  AppThemeData get data => _materialData;
  // AppThemeData get data => Platform.isIOS ? _cupertinoData : _materialData;

  AppThemeData _materialData = MainMaterialData();
  // AppThemeData _cupertinoData = MainMaterialData();
}

class MainMaterialData implements AppThemeData {
  static final _defaultTheme = ThemeData();
  static final double _defaultSize = AppScreen.hPercent * 4.5;

  @override
  BoxDecoration cardDecoration = BoxDecoration(
    border: Border.all(color: Colors.black, width: 1.0),
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(AppScreen.hPercent * 2)),
  );

  @override
  Color primaryColorFaded = Colors.grey;

  @override
  TextStyle subtitle3 = _defaultTheme.textTheme.subtitle2.copyWith(
    color: Colors.black,
    fontSize: _defaultSize * 11 / 14,
    fontFamily: 'Inter',
  );
  @override
  TextStyle subtitle4 = _defaultTheme.textTheme.subtitle2.copyWith(
    color: Colors.black,
    fontSize: _defaultSize * 10 / 14,
    fontFamily: 'Inter',
  );

  @override
  TextStyle headline7 = _defaultTheme.textTheme.headline6.copyWith(
    color: Colors.black,
    fontSize: _defaultSize * 15 / 14,
    fontFamily: 'Inter',
  );
}
