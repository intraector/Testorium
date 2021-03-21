import 'package:Testorium/ui/_themes/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInfoLine extends StatelessWidget {
  UserInfoLine({
    @required this.label,
    @required this.data,
    this.withDivider = true,
  });
  final String label;
  final String data;
  final bool withDivider;
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    data,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                )
              ],
            ),
          ),
          if (withDivider) Divider(color: Theme.of(context).backgroundColor),
        ],
      ),
    );
  }
}
