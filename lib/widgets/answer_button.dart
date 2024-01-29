import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this.text, this.onTap, {super.key});
  final String text;
  final void Function() onTap;

  final buttonStyle = OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      foregroundColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 51, 23, 100),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      side: const BorderSide(color: Colors.transparent));

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: buttonStyle,
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
