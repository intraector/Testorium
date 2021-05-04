import 'package:flutter/widgets.dart';

double appScreenPixelRatio = WidgetsBinding.instance!.window.devicePixelRatio;
double? appScreenWidth = WidgetsBinding.instance!.window.physicalSize.width / appScreenPixelRatio;
double appScreenHeight = WidgetsBinding.instance!.window.physicalSize.height / appScreenPixelRatio;
double appScreenHPercent = appScreenWidth! / 100;
double appScreenVPercent = appScreenHeight / 100;
double appScreenPaddingLeft = WidgetsBinding.instance!.window.viewPadding.left;
double appScreenPaddingTop = WidgetsBinding.instance!.window.viewPadding.top;
double appScreenPaddingRight = WidgetsBinding.instance!.window.viewPadding.right;
double appScreenPaddingBottom = WidgetsBinding.instance!.window.viewPadding.bottom;
double appScreenSafeWidth = appScreenWidth! - appScreenPaddingLeft - appScreenPaddingRight;
double appScreenSafeHeight = appScreenHeight - appScreenPaddingTop - appScreenPaddingBottom;
double appScreenSafeHPercent = (appScreenWidth! - appScreenSafeWidth) / 100;
double appScreenSafeVPercent = (appScreenHeight - appScreenSafeWidth) / 100;
