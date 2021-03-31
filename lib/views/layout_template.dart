import 'package:custom_questions_test/widgets/centered_view/centered_view.dart';
import 'package:flutter/cupertino.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;

  const LayoutTemplate({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: child,
    );
  }
}
