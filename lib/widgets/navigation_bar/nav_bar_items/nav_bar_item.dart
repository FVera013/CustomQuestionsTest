import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String imageName;
  const NavBarItem(
    this.imageName, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Image itemImage = Image.asset('assets/images/' + imageName + '.png');

    return SizedBox(
      height: 40,
      width: 40,
      child: IconButton(
        onPressed: () => _whenOnPressed(),
        icon: itemImage,
        focusColor: Colors.red,
        iconSize: double.infinity,
        padding: EdgeInsets.all(0),
        autofocus: false,
        alignment: Alignment.center,
      ),
    );
  }

  void _whenOnPressed() {}
}
