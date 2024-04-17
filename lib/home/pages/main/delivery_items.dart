import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_fish/core/design/routes.dart';
import '../../../core/design/custom_container_item.dart';

class DeliveryAllItemsScreen extends StatefulWidget {
  const DeliveryAllItemsScreen({super.key});

  @override
  State<DeliveryAllItemsScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<DeliveryAllItemsScreen> {
  bool isLoading = true;
  int? selectedIndex;
  List<String> categories = [
    "ساندويتشات",
    "ارز و طواجن",
    "سلطات",
    "الطلبات الخاصة",
  ];
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Widget getCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        if (selectedIndex == index) {
          Navigator.pushReplacementNamed(context, Routes.sandwichesRoute);
        } else if (selectedIndex == index) {
          Navigator.pushReplacementNamed(context, Routes.riceAndCasseroleRoute);
        } else if (selectedIndex == index) {
          Navigator.pushReplacementNamed(context, Routes.saladsRoute);
        } else {
          Navigator.pushReplacementNamed(context, Routes.specialOrdersRoute);
        }
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 2,
          bottom: 2,
          right: 20,
        ).w,
        width: 120.w,
        height: 40.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedIndex == index
                ? const Color(0xffEDBE2A)
                : Colors.transparent,
            width: 1.5,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFE7EEF8),
              blurRadius: 1,
              offset: Offset(2.6, 2.6),
            ),
          ],
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),
          ),
        ),
        child: Center(
          child: Text(
            categories[index],
            style: const TextStyle(
              fontSize: 19,
            ),
          ),
        ),
      ),
    );
  }

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
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: scaffoldKey,
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
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                                color: Color(0xffB1AEAE),
                              ),
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
                      height: 22.h,
                    ),
                    /*
                    SizedBox(
                      height: 45,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: categories
                            .asMap()
                            .entries
                            .map(
                              (MapEntry map) => getCategories(
                                map.key,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                     */
                    TabBar(
                      onTap: (value) {
                        selectedIndex = value;
                      },
                      isScrollable: true,
                      indicatorWeight: 7,
                      tabAlignment: TabAlignment.start,
                      indicatorColor: const Color(0xffEDBE2A),
                      labelColor: const Color(0xffEDBE2A),
                      labelStyle: const TextStyle(fontSize: 19,),
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        const Tab(child: Text("المنيو الرئيسي",),),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, Routes.sandwichesRoute);
                          },
                            child: const Tab(child: Text("ساندويتشات",),),),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, Routes.riceAndCasseroleRoute);
                          },
                            child: const Tab(child: Text("ارز و طواجن",),),),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, Routes.saladsRoute);
                          },
                            child: const Tab(child: Text("سلطات",),),),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, Routes.specialOrdersRoute);
                          },
                            child: const Tab(child: Text("الطلبات الخاصة",),),),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "All Items",
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
      ),
    );
  }
}
