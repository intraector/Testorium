import 'package:flutter/material.dart';

class UserInfoLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).userOrigin,
            style: TextStyle(
              color: BlocProvider.of<BlocTheme>(context).state.theme.data.primaryColorFaded,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    user.origin,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                )
              ],
            ),
          ),
          Divider(color: Theme.of(context).backgroundColor),
        ],
      ),
    );
  }
}
