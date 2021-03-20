import 'package:Testorium/constants/app_screen.dart';
import 'package:Testorium/ui/_themes/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class UserCardShimmer extends StatelessWidget {
  UserCardShimmer({this.margin, this.enabled = true});
  final EdgeInsets margin;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    final _shimmerColor1 = Theme.of(context).primaryColor;
    final _shimmerColor2 = Theme.of(context).scaffoldBackgroundColor;
    // final _shimmerColor1 = Colors.grey[300];
    // final _shimmerColor2 = Colors.grey[100];
    final _gradient = LinearGradient(
      colors: [
        _shimmerColor1,
        _shimmerColor1,
        _shimmerColor2,
        _shimmerColor1,
        _shimmerColor1,
      ],
      stops: [0.0, 0.35, 0.55, 0.6, 1.0],
    );
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
            Container(
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey[600],
                  width: 1.0,
                ),
              ),
              child: Shimmer(
                enabled: enabled,
                gradient: _gradient,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).cardColor,
                  radius: 30.0,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 17.0),
                    child: Row(
                      children: [
                        Shimmer(
                          enabled: enabled,
                          gradient: _gradient,
                          child: Container(
                            color: Theme.of(context).primaryColor,
                            width: appScreenHPercent * 30,
                            height: appScreenHPercent * 6,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Shimmer(
                          enabled: enabled,
                          gradient: _gradient,
                          child: Container(
                            color: Theme.of(context).primaryColor,
                            width: appScreenHPercent * 50,
                            height: appScreenHPercent * 5,
                          ),
                        ),
                      ),
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
}
