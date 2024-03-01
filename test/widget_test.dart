import 'package:flutter/material.dart';

class StoryText extends StatelessWidget {
  final String text;

  StoryText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '', // null check ekleyin
      style: TextStyle(
        fontSize: 25.0,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class ChoiceText extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  ChoiceText({required this.text, required this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: Text(
          text ?? '', // null check ekleyin
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
