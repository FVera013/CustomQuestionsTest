import 'package:custom_questions_test/widgets/call_to_action/call_to_action_stats_reset.dart';
import 'package:custom_questions_test/widgets/centered_view/centered_view.dart';
import 'package:custom_questions_test/widgets/custom_text/stats/stats_text_column.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsMenu extends StatelessWidget {
  const StatsMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Container(
        width: 900,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: StatsTextColumn(false),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: StatsTextColumn(true),
                ),
              ],
            ),
            CallToActionStatsReset(),
          ],
        ),
      ),
    );
  }
}
