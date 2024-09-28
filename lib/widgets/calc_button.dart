import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(text ?? '');
  }
}
