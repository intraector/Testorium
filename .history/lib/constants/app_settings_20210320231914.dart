import 'package:package_info/package_info.dart';

final Future<PackageInfo> _packageInfo = PackageInfo.fromPlatform();

Future<int> get appVersionInt async => int.parse((await appVersion).replaceAll('.', ''));
Future<String> get appVersion async => (await _packageInfo).version;
String get url => urlTest;
const String urlTest = 'http://yakutia.pw:5555';
const String urlProd = 'https://yakutia.click';
