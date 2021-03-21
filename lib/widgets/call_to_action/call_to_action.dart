import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  final String title;
  final double horizontalInset;
  const CallToAction(this.title, this.horizontalInset);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalInset, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 31, 229, 146),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
