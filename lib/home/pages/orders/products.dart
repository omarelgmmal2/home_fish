import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_fish/core/design/routes.dart';
import '../../../core/design/item_products.dart';
import '../../../drawer/view.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const DrawerView(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16,),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    "Products",
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
                const SizedBox(height: 16,),
               const Row(
                 children: [
                   ItemProducts(text: "Rice",),
                   ItemProducts(text: "Rice",),
                 ],
               ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Routes.sandwichRoute);
                    },
                    child: const ItemProducts(
                      text: "Sandawitches",
                      height: 120,
                      width: 205,
                    ),
                  ),
                ),
                const Row(
                 children: [
                   ItemProducts(text: "Rice",),
                   ItemProducts(text: "Rice",),
                 ],
               ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Routes.sandwichRoute);
                    },
                    child: ItemProducts(
                      text: "Sandawitches",
                      height: 120,
                      width: 205,
                    ),
                  ),
                ),
                const Row(
                  children: [
                    ItemProducts(text: "Rice",),
                    ItemProducts(text: "Add\nmore",),
                  ],
                ),
              ],
                  ),
          ),
        ),
      ),
    );
  }
}

