import 'package:Testorium/core/models/user.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
                        child: Text(user.name),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                user.status,
                                // style: Theme.of(context)
                                //     .textTheme
                                //     .bodyText2
                                //     .copyWith(color: Theme.of(context).cardColor),
                              ),
                            ),
                            Flexible(child: Text(' - ')),
                            Flexible(child: Text(user.species)),
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
        return output;
    }
  }
}
