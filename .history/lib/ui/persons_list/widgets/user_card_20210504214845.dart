import 'package:testorium/core/models/person.dart';
import 'package:testorium/dto/person/person.dart';
import 'package:testorium/ui/_widgets/user_avatar.dart';
import 'package:testorium/ui/_themes/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCard extends StatelessWidget {
  UserCard(this.person, {this.margin});
  final Person person;
  final EdgeInsets margin;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          13.0,
          14.0,
          13.0,
          17.0,
        ),
        child: Row(
          children: [
            UserAvatar(
              person.image,
              margin: const EdgeInsets.only(right: 10.0),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // color: Colors.pink.withOpacity(0.5),
                    margin: const EdgeInsets.only(bottom: 17.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            person.name,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              width: 13.0,
                              height: 13.0,
                              margin: const EdgeInsets.only(right: 10.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _statusIndicatorColor(person.status),
                                  border: Border.all(width: 1.0, color: Colors.white)),
                            ),
                            Flexible(
                              child: Text(
                                '${person.status} - ${person.species}',
                                style: TextStyle(
                                  color: BlocProvider.of<BlocTheme>(context)
                                      .state
                                      .theme
                                      .data
                                      .primaryColorFaded,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          person.gender,
                          style: TextStyle(
                            color: BlocProvider.of<BlocTheme>(context)
                                .state
                                .theme
                                .data
                                .primaryColorFaded,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
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
