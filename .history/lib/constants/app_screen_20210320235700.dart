import 'package:flutter/widgets.dart';

class AppScreen {
  const AppScreen();
  static double get appScreenPixelRatio => WidgetsBinding.instance.window.devicePixelRatio;
  static double get appScreenWidth =>
      WidgetsBinding.instance.window.physicalSize.width / appScreenPixelRatio;
  static double get appScreenHeight =>
      WidgetsBinding.instance.window.physicalSize.height / appScreenPixelRatio;
  static double get appScreenHPercent => appScreenWidth / 100;
  static double get appScreenVPercent => appScreenHeight / 100;
  static double get appScreenPaddingLeft => WidgetsBinding.instance.window.viewPadding.left;
  static double get appScreenPaddingTop => WidgetsBinding.instance.window.viewPadding.top;
  static double get appScreenPaddingRight => WidgetsBinding.instance.window.viewPadding.right;
  static double get appScreenPaddingBottom => WidgetsBinding.instance.window.viewPadding.bottom;
  static double get appScreenSafeWidth =>
      appScreenWidth - appScreenPaddingLeft - appScreenPaddingRight;
  static double get appScreenSafeHeight =>
      appScreenHeight - appScreenPaddingTop - appScreenPaddingBottom;
  static double get appScreenSafeHPercent => (appScreenWidth - appScreenSafeWidth) / 100;
  static double get appScreenSafeVPercent => (appScreenHeight - appScreenSafeWidth) / 100;
}
