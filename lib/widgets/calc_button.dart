import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 65,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        child: Text(text ?? ''),
      ),
    );
  }
}
