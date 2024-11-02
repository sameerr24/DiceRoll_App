import 'package:flutter/material.dart';
import 'package:flutter_projects/gradient_tool.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body:
            GradientTool(Color.fromARGB(255, 84, 249, 90), Colors.yellowAccent),
      ),
    ),
  );
}
