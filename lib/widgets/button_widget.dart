import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final MaterialStateProperty<Color?> backgroundColor;
  final String text;
  final Function() onPressed;

  const ButtonWidget({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: backgroundColor,
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
