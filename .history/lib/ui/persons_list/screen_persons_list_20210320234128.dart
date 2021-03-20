import 'package:Testorium/core/models/user.dart';
import 'package:Testorium/data/persons_list/repository/persons_repository.dart';
import 'package:Testorium/generated/l10n.dart';
import 'package:Testorium/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import 'widgets/user_card.dart';

class PersonsList extends StatelessWidget {
  PersonsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color shimmerColor1 = Colors.grey[300];
    final Color shimmerColor2 = Colors.grey[100];
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
              loadInProgress: (_) {
                return ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Shimmer(
                      gradient: LinearGradient(
                        colors: [
                          shimmerColor1,
                          shimmerColor1,
                          shimmerColor2,
                          shimmerColor1,
                          shimmerColor1,
                        ],
                        stops: [0.0, 0.35, 0.55, 0.6, 1.0],
                      ),
                      child: UserCard(
                        User(
                            name: 'sdsd',
                            gender: 'sdsd',
                            status: 'Alive',
                            species: 'Hitman',
                            image: ''),
                        margin: EdgeInsets.symmetric(horizontal: 25.0),
                      ),
                    );
                  },
                  separatorBuilder: (context, _) => SizedBox(height: 10.0),
                );
              },
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      RaisedButton(
                        child: Text('Try again'.toUpperCase()),
                        onPressed: () {
                          getIt<PersonsRepository>().add(EventPersonsRepository.loadData());
                        },
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
