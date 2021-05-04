import 'package:flutter/material.dart';

class ThemeBuilder extends StatelessWidget {
  const ThemeBuilder({@required this.child, Key key}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
