import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 1.0,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Theme.of(context).cardColor,
        backgroundImage: CachedNetworkImageProvider(
          user.image,
        ),
        radius: 30.0,
      ),
    );
  }
}
