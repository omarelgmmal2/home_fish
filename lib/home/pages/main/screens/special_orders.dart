import 'package:flutter/material.dart';

class SpecialOrdersScreen extends StatelessWidget {
  const SpecialOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: const Text(
          "طلبات خاصه",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
