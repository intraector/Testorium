import 'package:testorium/bloc/persons/bloc_persons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Init extends StatefulWidget {
  const Init({required this.child, Key? key}) : super(key: key);
  final Widget child;

  @override
  _InitState createState() => _InitState();
}

class _InitState extends State<Init> {
  @override
  void didUpdateWidget(covariant Init oldWidget) {
    if (widget != oldWidget) {
      _init(context);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

void _init(BuildContext context) {
  BlocProvider.of<BlocPersons>(context).add(const EventBlocPersons.loadData());
}
