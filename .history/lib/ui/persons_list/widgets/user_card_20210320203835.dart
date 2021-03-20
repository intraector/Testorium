import 'package:Testorium/core/models/user.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  UserCard(this.user, {this.margin});
  final User user;
  final EdgeInsets margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).primaryColor,
      ),
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
                      child: Text(user.name + 'sdakjndsjknfsdjkfndfdfdfdfdfd'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(user.status),
                          Text(user.species),
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
    );
  }
}
