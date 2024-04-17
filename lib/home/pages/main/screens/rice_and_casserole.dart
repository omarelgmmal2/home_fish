import 'package:flutter/material.dart';

class RiceAndCasseroleScreen extends StatelessWidget {
  const RiceAndCasseroleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: const Text(
          "ارز و طواجن",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
