import 'package:Testorium/data/web/persons/get_person_details/get_person_details.dart';
import 'package:Testorium/dto/person/person.dart';
import 'package:Testorium/data/web/persons/persons_repository_web.dart';
import 'package:Testorium/generated/l10n.dart';
import 'package:Testorium/ui/_widgets/user_avatar.dart';
import 'package:Testorium/ui/_themes/theme_bloc.dart';
import 'package:Testorium/ui/person_details/widgets/user_info_line_shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/user_info_line.dart';

class PersonDetails extends StatelessWidget {
  PersonDetails(this.user);
  final Person user;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PersonsRepositoryWeb().getPersonDetails(user.id),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            color: BlocProvider.of<BlocTheme>(context).state.theme.data.primaryColorFaded,
            icon: const Icon(
              Icons.chevron_left,
              size: 32.0,
            ),
            onPressed: () => context.router.pop(),
          ),
          centerTitle: true,
          title: Text(
            user.name,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  UserAvatar(
                    user.image,
                    radius: 95.0,
                    margin: const EdgeInsets.only(
                      top: 27.0,
                      bottom: 23.0,
                    ),
                    border: Border.all(color: Colors.white, width: 2.0),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 13.0,
                              height: 13.0,
                              margin: const EdgeInsets.only(right: 10.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _statusIndicatorColor(user.status),
                                  border: Border.all(width: 1.0, color: Colors.white)),
                            ),
                            Flexible(
                              child: Text(
                                '${user.status} - ${user.species}',
                                style: Theme.of(context)
                                        ?.textTheme
                                        ?.headline6
                                        ?.copyWith(fontWeight: FontWeight.w300) ??
                                    null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 39.0),
                  BlocBuilder<CommandGetPersonDetails, StateCommandGetPersonDetails>(
                    builder: (context, state) {
                      return state.map(
                        loadInProgress: (_) => UserInfoLineShimmer(
                          label: S.of(context).userOrigin,
                        ),
                        error: (error) => UserInfoLine(
                          label: S.of(context).userOrigin,
                          data: error.message,
                        ),
                        data: (data) => UserInfoLine(
                          label: S.of(context).userOrigin,
                          data: data.person.origin,
                        ),
                      );
                    },
                  ),
                  UserInfoLine(
                    label: S.of(context).userGender,
                    data: user.gender,
                  ),
                  BlocBuilder<CommandGetPersonDetails, StateCommandGetPersonDetails>(
                    builder: (context, state) {
                      return state.map(
                        loadInProgress: (_) => UserInfoLineShimmer(
                          label: S.of(context).userLocation,
                        ),
                        error: (error) => UserInfoLine(
                          label: S.of(context).userLocation,
                          data: error.message,
                        ),
                        data: (data) => UserInfoLine(
                          label: S.of(context).userLocation,
                          data: data.person.location,
                          withDivider: false,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _statusIndicatorColor(String status) {
    Color output;
    switch (status) {
      case 'Dead':
        output = Colors.red;
        break;
      case 'Alive':
        output = const Color(0xff00c48c);
        break;
      default:
        output = Colors.grey;
    }
    return output;
  }
}
