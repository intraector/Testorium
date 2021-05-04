import 'package:testorium/common/routes.gr.dart';
import 'package:testorium/bloc/persons/bloc_persons.dart';
import 'package:testorium/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'widgets/area_error.dart';
import 'widgets/area_loading.dart';
import 'widgets/user_card.dart';

class PersonsList extends StatelessWidget {
  PersonsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).personsListTitle,
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: BlocBuilder<BlocPersons, StateBlocPersons>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox.shrink(),
            loadInProgress: (_) => const AreaLoading(),
            error: (error) => AreaError(error.msg),
            data: (data) {
              return ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                itemCount: data.list.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: UserCard(
                      data.list[index],
                      margin: const EdgeInsets.symmetric(horizontal: 25.0),
                    ),
                    onTap: () {
                      AutoRouter.of(context).push(PersonDetailsRoute(user: data.list[index]));
                    },
                  );
                },
                separatorBuilder: (context, _) => const SizedBox(height: 10.0),
              );
            },
          );
        },
      ),
    );
  }
}
