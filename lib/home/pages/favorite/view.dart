import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/design/custom_container_item.dart';
import '../../../drawer/view.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
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
                  IconButton(onPressed: (){
                    //Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back_ios,),),
                  const Text("Favourite",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,),),
                  IconButton(onPressed: (){
                    scaffoldKey.currentState!.openDrawer();
                  }, icon: const Icon(Icons.menu,),),

                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: isLoading ? const Center(
                child: CircularProgressIndicator(
                color: Color(0xffEDBE2A),
              ),
              ) : const CustomContainerItem(),
            ),
          ],
        ),
      ),
    );
  }
}
