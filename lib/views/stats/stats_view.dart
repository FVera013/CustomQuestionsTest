import 'package:custom_questions_test/widgets/centered_view/centered_view.dart';

import 'package:custom_questions_test/widgets/navigation_bar/empty_navigation_bar.dart';
import 'package:custom_questions_test/widgets/navigation_bar/navigation_bar.dart';
import 'package:custom_questions_test/widgets/stats_menu/stats_menu.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsView extends StatelessWidget {
  const StatsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            Expanded(child: StatsMenu()),
            EmptyNavigationBar(),
          ],
        ),
      ),
    );
  }
}
