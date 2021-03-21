import 'package:custom_questions_test/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallToActionStartStats extends StatelessWidget {
  final String title;
  const CallToActionStartStats(this.title);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => null,
      child: SizedBox(
          width: 200,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          )),
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => greenForButtons,
        ),
      ),
    );
  }
}
