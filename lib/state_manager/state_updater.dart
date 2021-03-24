import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// [stateUpdater] is used to pass the app to a different screen. The first
/// parameter is of type [BuildContext] and is not optional.
///
/// The other 2 optional parameters are [bool] pushingForwards with a default
/// value of true, and [Widget] destination with no default value.
///
/// If [stateUpdater] is called with only the [BuildContext] parameter passed,
/// it will automatically pop the user back one step in navigation.
///
void stateUpdater(
  BuildContext context, {
  bool pushingForwards = false,
  Widget destination,
}) {
  if (pushingForwards) {
    print('you are pushing forwards in stateupdater!');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destination),
    );
  } else {
    print('you are popping backwards in stateupdater!');
    Navigator.pop(context);
  }
}
