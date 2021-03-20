import 'package:flutter/widgets.dart';

class AppScreen {
  const AppScreen();
  static double get pixelRatio => WidgetsBinding.instance.window.devicePixelRatio;
  static double get width => WidgetsBinding.instance.window.physicalSize.width / pixelRatio;
  static double get height => WidgetsBinding.instance.window.physicalSize.height / pixelRatio;
  static double get hPercent => width / 100;
  static double get vPercent => height / 100;
  static double get paddingLeft => WidgetsBinding.instance.window.viewPadding.left;
  static double get paddingTop => WidgetsBinding.instance.window.viewPadding.top;
  static double get paddingRight => WidgetsBinding.instance.window.viewPadding.right;
  static double get paddingBottom => WidgetsBinding.instance.window.viewPadding.bottom;
  static double get safeWidth => width - paddingLeft - paddingRight;
  static double get safeHeight => height - paddingTop - paddingBottom;
  static double get safeHPercent => (width - safeWidth) / 100;
  static double get safeVPercent => (height - safeWidth) / 100;
}
