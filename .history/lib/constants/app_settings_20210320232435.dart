import 'package:package_info/package_info.dart';

final Future<PackageInfo> _packageInfo = PackageInfo.fromPlatform();

Future<int> get appVersionInt async => int.parse((await appVersion).replaceAll('.', ''));
Future<String> get appVersion async {
  final __packageInfo = await _packageInfo;
  return '${__packageInfo.version}.${__packageInfo.buildNumber}';
}

const String urlProd = 'https://rickandmortyapi.com';
const String urlTest = 'https://test.rickandmortyapi.com';
