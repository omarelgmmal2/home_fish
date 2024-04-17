import 'package:flutter/material.dart';
import 'app_image.dart';

class CustomContainerAppInput extends StatelessWidget {
  final String text, icon;

  const CustomContainerAppInput({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.only(bottom: 16),
      height: 62,
      width: 333,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(.25),
            offset: const Offset(0, 4),
            spreadRadius: 0,
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          AppImage(
            icon,
            height: 24,
            width: 24,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff959595),
            ),
          ),
        ],
      ),
    );
  }
}
