import 'package:flutter/material.dart';

import 'user_card_shimmer.dart';

class AreaLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      itemCount: 8,
      itemBuilder: (context, index) {
        return UserCardShimmer(
          enabled: false,
          margin: EdgeInsets.symmetric(horizontal: 25.0),
        );
      },
      separatorBuilder: (context, _) => SizedBox(height: 10.0),
    );
  }
}
