import 'package:custom_questions_test/constants/colors/colors.dart';
import 'package:custom_questions_test/widgets/custom_text/stats/stats_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallToActionStatsReset extends StatelessWidget {
  const CallToActionStatsReset({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _whenOnPressed(),
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => greenForButtons,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(
          'Reset Stats',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void _whenOnPressed() {}
}
