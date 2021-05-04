import 'package:Testorium/bloc/persons/bloc_persons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Init extends StatelessWidget {
  const Init({required this.child, Key? key}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BlocPersons>(context).add(const EventBlocPersons.loadData());
    return child;
  }
}
