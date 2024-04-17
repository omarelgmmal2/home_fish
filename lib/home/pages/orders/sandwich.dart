import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../core/design/app_image.dart';
import '../../../drawer/view.dart';
import 'model.dart';

class SandwichScreen extends StatefulWidget {
  const SandwichScreen({super.key});

  @override
  State<SandwichScreen> createState() => _SandwichScreenState();
}

class _SandwichScreenState extends State<SandwichScreen> {
  bool isLoading = true;
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
        key: scaffoldKey,
        drawer: const DrawerView(),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(15),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      //Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  const Text(
                    "Sandawitches",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 900.h,
              child: isLoading
                  ? const Center(
                child: CircularProgressIndicator(
                  color: Color(0xffEDBE2A),
                ),
              )
                  : ListView.separated(
                itemBuilder: (context, index) => SandwichItem(
                  model: sandwichList[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 16,
                ),
                itemCount: sandwichList.length,
              ),
            ),
          ],
        ),
      )
    );
  }
}
class SandwichItem extends StatelessWidget {
  final SandwichModel model;

  const SandwichItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        dismissible: DismissiblePane(onDismissed: () {

        }),
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        width: 365.w,
        height: 105.h,
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppImage(
              model.image,
              height: 45.h,
              width: 88.w,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "${model.price}",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    GestureDetector(
                      onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.only(left: 5),
                          width: 66.w,
                          height: 25.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16).r,
                            border: Border.all(
                              color: const Color(0xffEDBE2A),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.edit,color: Colors.black,size: 20,),
                              SizedBox(width: 3,),
                              Text(
                                "Edit",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              ),
                            ],
                          ),

                        )
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

