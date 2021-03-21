import 'package:custom_questions_test/widgets/call_to_action/call_to_action_start_stats.dart';
import 'package:custom_questions_test/widgets/centered_view/centered_view.dart';
import 'package:flutter/cupertino.dart';

class StartOptions extends StatelessWidget {
  const StartOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CallToActionStartStats('Start Game'),
            SizedBox(
              height: 30,
            ),
            CallToActionStartStats('Stats'),
          ],
        ),
      ),
    );
  }
}
