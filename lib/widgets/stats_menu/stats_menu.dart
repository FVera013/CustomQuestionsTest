import 'package:custom_questions_test/widgets/centered_view/centered_view.dart';
import 'package:flutter/cupertino.dart';

class StatsMenu extends StatelessWidget {
  const StatsMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(''),
            SizedBox(
              height: 30,
            ),
            Text(''),
          ],
        ),
      ),
    );
  }
}
