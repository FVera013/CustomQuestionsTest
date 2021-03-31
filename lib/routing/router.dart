import 'package:custom_questions_test/routing/route_names.dart';
import 'package:custom_questions_test/views/edit_questions/edit_questions_view.dart';
import 'package:custom_questions_test/views/home/home_view.dart';
import 'package:custom_questions_test/views/question/questions_view.dart';
import 'package:custom_questions_test/views/settings/settings_view.dart';
import 'package:custom_questions_test/views/stats/stats_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
      break;

    case StatsRoute:
      return _getPageRoute(StatsView());
      break;

    case QuestionsRoute:
      return _getPageRoute(QuestionsView());
      break;

    case EditQuestionsRoute:
      return _getPageRoute(EditQuestionsView());
      break;

    case SettingsRoute:
      return _getPageRoute(SettingsView());
      break;

    default:
      ;
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
