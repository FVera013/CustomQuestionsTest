import 'package:custom_questions_test/widgets/centered_view/centered_view.dart';
import 'package:custom_questions_test/widgets/main_menu/navigation_bar/empty_navigation_bar.dart';
import 'package:custom_questions_test/widgets/main_menu/navigation_bar/navigation_bar.dart';
import 'package:custom_questions_test/widgets/main_menu/start_options/start_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            Expanded(child: StartOptions()),
            EmptyNavigationBar(),
          ],
        ),
      ),
    );
  }
}