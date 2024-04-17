import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_fish/core/design/app_image.dart';
import 'package:home_fish/home/pages/orders/model.dart';
import '../../../core/design/custom_cart_contianer.dart';
import '../../../drawer/view.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const DrawerView(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16,),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {

                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                const Text(
                  "Cart",
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
            Container(
              padding: const EdgeInsets.only(left: 45),
              margin: const EdgeInsets.only(
                left: 25, right: 25, top: 16, bottom: 20,),
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xffFFF4EE),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Row(
                children: [
                  AppImage("assets/icons/solar_bag-bold.svg",),
                  SizedBox(width: 10,),
                  Text(
                    "You have 3 items in your list cart",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffED8047),
                    ),
                  ),
                ],
              ),
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => CustomContainerCart(model: cartList[index],),
              separatorBuilder: (context, index) => const SizedBox(height: 16,),
              itemCount: cartList.length,
            ),
            const SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.all(16),
              height: 248,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Subtotal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,),),
                      Text("\$\$\$",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Deilvery",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,),),
                      Text("\$\$\$",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),)
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 40,
                    endIndent: 30.0,
                    indent: 30.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Total",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,),),
                      Text("\$\$\$",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,),)
                    ],
                  ),
                  const SizedBox(height: 30,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(260, 60),
                      backgroundColor: const Color(0xffEDBE2A),
                    ),
                    onPressed: (){},
                    child: const Text(
                    "Check out",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white,),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


