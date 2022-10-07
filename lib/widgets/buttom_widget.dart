import 'package:flutter/material.dart';

class ButtomWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color colorText;
  final Function()? onPressed;
  const ButtomWidget({
    super.key,
    required this.text,
    required this.color,
    this.onPressed,
    required this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(color: Colors.black),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: colorText,
          ),
        ),
      ),
    );
  }
}
