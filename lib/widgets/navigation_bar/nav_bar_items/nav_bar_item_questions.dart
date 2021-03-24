import 'package:custom_questions_test/constants/names/names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarItemQuestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Image itemImage =
        Image.asset('assets/images/' + questionsIconString + '.png');

    return SizedBox(
      height: 40,
      width: 40,
      child: IconButton(
        onPressed: () => _whenOnPressed(context),
        icon: itemImage,
        alignment: Alignment.center,
        padding: EdgeInsets.all(0),
        tooltip: 'Change the List of Questions',
        autofocus: false,
      ),
    );
  }

  void _whenOnPressed(BuildContext context) {}
}
