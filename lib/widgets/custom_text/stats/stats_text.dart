import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsText extends StatefulWidget {
  final String text;

  const StatsText(this.text);

  @override
  StatsTextState createState() {
    return StatsTextState(text);
  }
}

class StatsTextState extends State<StatsText> {
  int counter = 0;

  final String text;

  StatsTextState(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Text(
        text + counter.toString(),
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
    );
  }
}
