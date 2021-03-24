import 'package:custom_questions_test/widgets/centered_view/centered_view.dart';
import 'package:custom_questions_test/widgets/navigation_bar/empty_navigation_bar.dart';
import 'package:custom_questions_test/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            Expanded(
              child: Text(
                'Welcome to the Questions!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
            EmptyNavigationBar(),
          ],
        ),
      ),
    );
  }
}
