import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallToActionStartStats extends StatelessWidget {
  final String title;
  const CallToActionStartStats(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: SizedBox(
        width: 100,
        child: Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 31, 229, 146),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
