import 'package:Testorium/data/persons_list/data_sources/web/persons_converter_web.dart';
import 'package:Testorium/data/persons_list/data_sources/web/persons_data_source_web.dart';
import 'package:Testorium/data/persons_list/data_sources/web/persons_adapter_web.dart';
import 'package:Testorium/generated/l10n.dart';

import 'package:flutter/material.dart';

class PersonsList extends StatelessWidget {
  PersonsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).personsListTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final adapter = PersonsAdapterWeb(
            dataSource: PersonsDataSourceWeb(),
            converter: PersonsConverterWeb(),
          );
          await for (final state in adapter.getPersons()) {}
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
