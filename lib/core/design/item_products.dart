import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemProducts extends StatelessWidget {
  final String text;
  final double height,width;
  const ItemProducts({super.key, required this.text,this.height = 120,this.width = 150,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25,top: 10,bottom: 16),
      alignment: Alignment.center,
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16).r,
        border: Border.all(
          color: const Color(0xffFFD969),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
