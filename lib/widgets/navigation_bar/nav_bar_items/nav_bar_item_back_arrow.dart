import 'package:custom_questions_test/constants/names/names.dart';
import 'package:custom_questions_test/state_manager/state_updater.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarItemBackArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Image itemImage =
        Image.asset('assets/images/' + backArrowIconString + '.png');

    return SizedBox(
      height: 40,
      width: 40,
      child: IconButton(
        onPressed: () => _whenOnPressed(context),
        icon: itemImage,
        alignment: Alignment.center,
        padding: EdgeInsets.all(0),
        tooltip: 'Return to last page',
        autofocus: false,
      ),
    );
  }

  void _whenOnPressed(BuildContext context) {
    stateUpdater(context);
  }
}
