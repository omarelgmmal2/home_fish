import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: const Color(0xffEDBE2A),
          /*
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(.25),
              offset: const Offset(0, 4),
              spreadRadius: 0,
              blurRadius: 4,
            ),
          ],
           */
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
