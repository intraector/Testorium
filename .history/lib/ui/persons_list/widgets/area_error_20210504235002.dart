import 'package:Testorium/bloc/persons/bloc_persons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaError extends StatelessWidget {
  AreaError(this.msg);
  final String msg;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  msg,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          ElevatedButton(
            child: Text('Try again'.toUpperCase()),
            onPressed: () {
              BlocProvider.of<BlocPersons>(context).add(const EventBlocPersons.loadData());
            },
          ),
        ],
      ),
    );
  }
}
