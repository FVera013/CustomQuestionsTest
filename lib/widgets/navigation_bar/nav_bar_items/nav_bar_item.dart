import 'package:custom_questions_test/constants/text/text.dart';
import 'package:custom_questions_test/locator.dart';
import 'package:custom_questions_test/services/navigation_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String imageName;
  final String navigationPath;

  const NavBarItem(this.imageName, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    final Image itemImage = Image.asset('assets/images/' + imageName + '.png');

    return SizedBox(
      height: 40,
      width: 40,
      child: IconButton(
        onPressed: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        icon: itemImage,
        alignment: Alignment.center,
        padding: EdgeInsets.all(0),
        tooltip: _thisToolTip(),
        autofocus: false,
      ),
    );
  }

  String _thisToolTip() {
    switch (imageName) {
      case questionsIconString:
        return editQuestionsToolTipText;
        break;

      case settingsIconString:
        return settingsToolTipText;
        break;

      case backArrowIconString:
        return backArrowToolTipText;
        break;

      default:
    }
  }
}
