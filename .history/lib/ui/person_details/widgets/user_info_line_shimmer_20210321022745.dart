import 'package:Testorium/generated/l10n.dart';
import 'package:Testorium/ui/_themes/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class UserInfoLineShimmer extends StatelessWidget {
  UserInfoLineShimmer({
    @required this.label,
    this.withDivider = true,
  });
  final String label;
  final bool withDivider;
  @override
  Widget build(BuildContext context) {
    final _shimmerColor1 = Colors.grey[100];
    final _shimmerColor2 = Theme.of(context).primaryColor
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: BlocProvider.of<BlocTheme>(context).state.theme.data.primaryColorFaded,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0, bottom: 4.0),
            child: Row(
              children: [
                Expanded(
                  child: Shimmer(
                    gradient: _gradient,
                    child: Text(
                      S.of(context).loadInProgress,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                )
              ],
            ),
          ),
          if (withDivider) Divider(color: Theme.of(context).backgroundColor),
          SizedBox(height: 5.0),
        ],
      ),
    );
  }
}
