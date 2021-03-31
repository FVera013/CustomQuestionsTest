import 'package:custom_questions_test/constants/colors/colors.dart';
import 'package:custom_questions_test/constants/text/text.dart';

import 'package:custom_questions_test/widgets/custom_text/stats/stats_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsTextColumn extends StatelessWidget {
  final bool isFailureText;

  const StatsTextColumn(this.isFailureText);

  @override
  Widget build(BuildContext context) {
    final List<String> _statsTextConstantString = isFailureText
        ? [questionsAnsweredIncorrectly, questionTestsFailed]
        : [questionsAnsweredCorrectly, questionsTestsPassed];
    final Color _thisBackgroundColor =
        isFailureText ? redForFailures : greenForButtons;

    return Container(
      padding: EdgeInsets.all(5),
      child: Container(
        height: 100,
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        color: _thisBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StatsText(_statsTextConstantString[0]),
            StatsText(_statsTextConstantString[1]),
          ],
        ),
      ),
    );
  }
}
