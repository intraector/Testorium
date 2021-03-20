import 'package:Testorium/core/models/user.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  UserCard(this.user);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          CircleAvatar(
            child: CachedNetworkImage(
              imageUrl: user.image,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          )
        ],
      ),
    );
  }
}
