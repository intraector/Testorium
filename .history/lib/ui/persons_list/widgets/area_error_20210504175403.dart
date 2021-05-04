import 'package:testorium/data/persons/repository/persons_repository.dart';
import 'package:testorium/services/service_locator.dart';
import 'package:flutter/material.dart';

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
          RaisedButton(
            child: Text('Try again'.toUpperCase()),
            onPressed: () {
              getIt<PersonsRepository>().add(const EventPersonsRepository.loadData());
            },
          ),
        ],
      ),
    );
  }
}
