import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'theme_bloc.dart';

class ThemeBuilder extends StatelessWidget {
  const ThemeBuilder({@required this.child, Key key}) : super(key: key);
  final MaterialApp child;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocTheme, StateTheme>(
      builder: (context, state) {
        child.theme =
        return child;
      },
    );
  }
}
