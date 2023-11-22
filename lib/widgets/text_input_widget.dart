import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool isError;
  final String hintText;

  const TextInputWidget({
    super.key,
    required this.controller,
    required this.isError,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: TextField(
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 18,
        ),
        controller: controller,
        keyboardType: const TextInputType.numberWithOptions(
          decimal: true,
        ),
        decoration: InputDecoration(
          errorText: isError ? 'Enter a valid number' : null,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
