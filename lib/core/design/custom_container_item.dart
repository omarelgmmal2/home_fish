import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../home/pages/main/model.dart';
import 'app_image.dart';

class CustomContainerItem extends StatelessWidget {
  const CustomContainerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
        childAspectRatio: 163 / 250,
      ),
      itemBuilder: (context, index) => _ItemProduct(
        model: list[index],
      ),
      itemCount: list.length,
    );
  }
}


class _ItemProduct extends StatefulWidget {
  final MainModel model;
  const _ItemProduct({super.key, required this.model});

  @override
  State<_ItemProduct> createState() => _ItemProductState();
}

class _ItemProductState extends State<_ItemProduct> {
  bool isLiked = false;
  void toggleLike(){
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16,),
      margin: const EdgeInsets.only(bottom: 40),
      height: 200.h,
      width: 200.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16).r,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              toggleLike();
            },
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: Icon(
                CupertinoIcons.heart_fill,
                color: isLiked ? Colors.red : Colors.grey,
              ),
            ),
          ),
          Stack(
            //alignment: AlignmentDirectional.topEnd,
            children: [
              ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(11).r,
                child: AppImage(
                  widget.model.image,
                  fit: BoxFit.scaleDown,
                ),
              ),

            ],
          ),
          Text(
            widget.model.name,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${widget.model.price}",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 25.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5).r,
                    color: const Color(0xffEDBE2A),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 26,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
