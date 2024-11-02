import 'package:flutter/material.dart';

class TextTool extends StatelessWidget {
  const TextTool(this.text, {super.key});
  final String text; //instance variable (variable within classes)
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: 28,
      ),
    );
  }
}
