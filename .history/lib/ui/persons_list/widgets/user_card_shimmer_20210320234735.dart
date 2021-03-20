import 'package:Testorium/ui/_themes/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class UserCardShimmer extends StatelessWidget {
  UserCardShimmer({this.margin});
  final EdgeInsets margin;
  final Color _shimmerColor1 = Colors.grey[300];
  final Color _shimmerColor2 = Colors.grey[100];
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
                backgroundColor: Theme.of(context).cardColor,
                radius: 30.0,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // color: Colors.pink.withOpacity(0.5),
                    margin: EdgeInsets.only(bottom: 17.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Shimmer Dummy',
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
                              margin: EdgeInsets.only(right: 10.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                  border: Border.all(width: 1.0, color: Colors.white)),
                            ),
                            Flexible(
                              child: Text(
                                'shimmer',
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
                              'shimmer',
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
                      Container(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Text(
                          'shimmer',
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
}
