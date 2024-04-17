import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_fish/core/design/app_image.dart';
import 'package:home_fish/core/design/routes.dart';
import '../../../core/design/custom_container_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
      body: SafeArea(
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Color(0xffEDBE2A),
                ),
              )
            : ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Color(0xffB1AEAE),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                        iconSize: 35,
                        color: const Color(0xffB1AEAE),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, Routes.deliveryItemRoute,);
                        },
                        child: Container(
                          width: 100.w,
                          height: 65.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16).r,
                            border: Border.all(
                              color: const Color(0xffEDBE2A),
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
                          child: Column(
                            children: [
                              AppImage(
                                "assets/images/Delivery-Service-Business-in-Dubai-removebg-preview.png",
                                height: 38.h,
                                width: 40.w,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Delivary",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, Routes.hallItemRoute,);
                        },
                        child: Container(
                          width: 100.w,
                          height: 65.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16).r,
                            border: Border.all(
                              color: const Color(0xffEDBE2A),
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
                          child: Column(
                            children: [
                              AppImage(
                                "assets/images/download__2_-removebg-preview 0.png",
                                height: 38.h,
                                width: 51.w,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Hall",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Popular Items",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const CustomContainerItem(),
                ],
              ),
      ),
    );
  }
}
