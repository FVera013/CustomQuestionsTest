import 'package:custom_questions_test/constants/text/text.dart';
import 'package:custom_questions_test/routing/route_names.dart';
import 'package:custom_questions_test/widgets/navigation_bar/nav_bar_items/nav_bar_item.dart';
import 'package:custom_questions_test/widgets/navigation_bar/nav_bar_items/nav_bar_no_item.dart';

import 'package:flutter/cupertino.dart';

class NavigationBar extends StatelessWidget {
  final bool isHomeView;

  const NavigationBar([this.isHomeView = false]);

  @override
  Widget build(BuildContext context) {
    final Widget backArrowIfNotHomeView = isHomeView
        ? NavBarNoItem()
        : NavBarItem(backArrowIconString, HomeRoute);
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              backArrowIfNotHomeView,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              NavBarItem(questionsIconString, EditQuestionsRoute),
              NavBarNoItem(),
              NavBarItem(settingsIconString, SettingsRoute),
            ],
          ),
        ],
      ),
    );
  }
}
