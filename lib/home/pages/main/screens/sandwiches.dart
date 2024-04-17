import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/design/custom_container_item.dart';

class SandwichesScreen extends StatefulWidget {
  const SandwichesScreen({super.key});

  @override
  State<SandwichesScreen> createState() => _SandwichesScreenState();
}

class _SandwichesScreenState extends State<SandwichesScreen> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    isLoading = true;
    Timer(const Duration(seconds: 2), () {
      isLoading = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "ساندويتشات",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
          child: isLoading
              ? const Center(
            child: CircularProgressIndicator(
              color: Color(0xffEDBE2A),
            ),
          ) :
              ListView(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search,size: 25,color: Color(0xffB1AEAE),),
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Color(0xffB1AEAE),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert),
                        iconSize: 35,
                        color: const Color(0xffB1AEAE),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const CustomContainerItem(),
                ],
              ),
      ),
    );
  }
}