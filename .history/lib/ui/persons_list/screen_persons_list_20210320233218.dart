import 'package:Testorium/data/persons_list/repository/persons_repository.dart';
import 'package:Testorium/generated/l10n.dart';
import 'package:Testorium/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/user_card.dart';

class PersonsList extends StatelessWidget {
  PersonsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PersonsRepository>(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            S.of(context).personsListTitle,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        body: BlocBuilder<PersonsRepository, StatePersonsRepository>(
          builder: (context, state) {
            return state.maybeMap(
              data: (data) {
                return ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  itemCount: data.list.length,
                  itemBuilder: (context, index) {
                    return UserCard(
                      data.list[index],
                      margin: EdgeInsets.symmetric(horizontal: 25.0),
                    );
                  },
                  separatorBuilder: (context, _) => SizedBox(height: 10.0),
                );
              },
              error: (error) {
                return Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              error.msg,
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
              orElse: () => SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}