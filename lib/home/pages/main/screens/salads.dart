import 'package:flutter/material.dart';

class SaladsScreen extends StatelessWidget {
  const SaladsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: const Text(
          "سلطات",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
