import 'package:flutter/material.dart';

class Init extends StatelessWidget {
  const Init({@required this.child, Key key}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
