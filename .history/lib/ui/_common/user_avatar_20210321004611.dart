import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  UserAvatar(
    this.url, {
    this.margin,
    this.border,
    this.radius,
  });
  final String url;
  final EdgeInsets margin;
  final BoxBorder border;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: border ??
            Border.all(
              color: Colors.white,
              width: 1.0,
            ),
      ),
      child: CircleAvatar(
        backgroundColor: Theme.of(context).cardColor,
        backgroundImage: CachedNetworkImageProvider(url),
        radius: 30.0,
      ),
    );
  }
}
