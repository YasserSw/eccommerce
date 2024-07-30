import 'package:flutter/material.dart';

class Customcolumn extends StatelessWidget {
  final String text;
  final Icon icon;

  Customcolumn(
    Key? key,
    this.text,
    this.icon,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: CircleAvatar(child: icon),
        ),
        Text("${text}")
      ],
    );
  }
}
