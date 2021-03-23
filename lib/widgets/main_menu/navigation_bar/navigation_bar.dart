import 'package:custom_questions_test/constants/names/names.dart';
import 'package:custom_questions_test/widgets/main_menu/navigation_bar/nav_bar_item.dart';
import 'package:custom_questions_test/widgets/main_menu/navigation_bar/nav_bar_no_item.dart';
import 'package:flutter/cupertino.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem(questionsIconString),
              NavBarNoItem(),
              NavBarItem(settingsIconString),
            ],
          )
        ],
      ),
    );
  }
}
