import 'package:testorium/bloc/persons/bloc_persons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaError extends StatelessWidget {
  AreaError(this.message);
  final String? message;
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
                  message ?? '',
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
