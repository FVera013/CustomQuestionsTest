import 'package:custom_questions_test/constants/colors/colors.dart';
import 'package:custom_questions_test/constants/names/names.dart';
import 'package:custom_questions_test/state_manager/state_updater.dart';
import 'package:custom_questions_test/views/question/question_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallToActionStartStats extends StatelessWidget {
  final String title;
  const CallToActionStartStats(this.title);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _whenOnPressed(title, context),
      child: SizedBox(
          width: 200,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          )),
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => greenForButtons,
        ),
      ),
    );
  }

  void _whenOnPressed(String title, BuildContext context) {
    switch (title) {
      case startGameString:
        stateUpdater(
          context,
          destination: QuestionView(),
          pushingForwards: true,
        );
        break;
      case statsString:
        stateUpdater(
          context,
        );
        break;
      default:
    }
  }
}
