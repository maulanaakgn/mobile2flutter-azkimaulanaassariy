import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final GestureTapCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        minimumSize: Size(48, 48),
      ),
      onPressed: widget.onPressed,
      child: Text(
        widget.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
}
}