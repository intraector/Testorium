import 'package:package_info/package_info.dart';

class AppSettings {
  static PackageInfo _packageInfo = await PackageInfo.fromPlatform();
  static int get appVersionInt => int.parse(_appVersion.replaceAll('.', ''));
  static Future<String> get appVersion async => (await _packageInfo).version;
  static const String _appVersion = '1.0.1';
  static String get url => urlTest;
  static const String urlTest = 'http://yakutia.pw:5555';
  static const String urlProd = 'https://yakutia.click';
}
