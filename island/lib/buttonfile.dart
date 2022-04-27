import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({required this.colors, required this.text});
  final Color colors;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            ".",
            style: TextStyle(fontSize: 30, color: colors),
          ),
          Text(
            text,
            style: TextStyle(color: colors),
          )
        ],
      ),
    );
  }
}
