import 'package:Testorium/data/persons_list/data_sources/web/persons_converter_web.dart';
import 'package:Testorium/data/persons_list/data_sources/web/persons_data_source_web.dart';
import 'package:Testorium/data/persons_list/data_sources/web/persons_adapter_web.dart';
import 'package:Testorium/data/persons_list/repository/persons_repository.dart';
import 'package:Testorium/generated/l10n.dart';
import 'package:Testorium/services/service_locator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonsList extends StatelessWidget {
  PersonsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<PersonsRepository>(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).personsListTitle),
          ),
          body: Center(child: BlocBuilder<PersonsRepository, StatePersonsRepository>(
            builder: (context, state) {
              return Container();
            },
          )),
        ));
  }
}
