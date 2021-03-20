import 'package:Testorium/data/persons_list/data_sources/web/persons_converter_web.dart';
import 'package:Testorium/data/persons_list/data_sources/web/persons_data_source_web.dart';
import 'package:Testorium/data/persons_list/data_sources/web/persons_adapter_web.dart';
import 'package:Testorium/data/persons_list/repository/persons_repository.dart';
import 'package:Testorium/generated/l10n.dart';
import 'package:Testorium/services/service_locator.dart';

import 'package:flutter/material.dart';

class PersonsList extends StatelessWidget {
  PersonsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).personsListTitle),
      ),
      body: Center(
        child: SizedBox(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final adapter = PersonsAdapterWeb(
            dataSource: PersonsDataSourceWeb(),
            converter: PersonsConverterWeb(),
          );
          await for (final state in adapter.getPersons()) {
            print('---------- $state');
          }
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}