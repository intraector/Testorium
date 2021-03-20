import 'package:Testorium/core/models/user.dart';
import 'package:Testorium/ui/_themes/theme_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCard extends StatelessWidget {
  UserCard(this.user, {this.margin});
  final User user;
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
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              child: CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(
                  user.image,
                ),
                radius: 30.0,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(user.name,style: ,),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              width: 15.0,
                              height: 15.0,
                              margin: EdgeInsets.only(right: 10.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _statusIndicatorColor(user.status),
                                  border: Border.all(width: 1.0, color: Colors.white)),
                            ),
                            Flexible(
                              child: Text(
                                user.status,
                                style: TextStyle(
                                  color: BlocProvider.of<BlocTheme>(context)
                                      .state
                                      .theme
                                      .data
                                      .primaryColorFaded,
                                ),
                              ),
                            ),
                            Flexible(
                                child: Text(
                              ' - ',
                              style: TextStyle(
                                color: BlocProvider.of<BlocTheme>(context)
                                    .state
                                    .theme
                                    .data
                                    .primaryColorFaded,
                              ),
                            )),
                            Flexible(
                                child: Text(
                              user.species,
                              style: TextStyle(
                                color: BlocProvider.of<BlocTheme>(context)
                                    .state
                                    .theme
                                    .data
                                    .primaryColorFaded,
                              ),
                            )),
                          ],
                        ),
                      ),
                      Text(user.gender)
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
        output = Colors.green;
        break;
      default:
        output = Colors.grey;
    }
    return output;
  }
}
