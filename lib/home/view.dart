import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:home_fish/home/pages/favorite/view.dart';
import 'package:home_fish/home/pages/main/view.dart';
import 'package:home_fish/home/pages/orders/view.dart';
import 'package:home_fish/home/pages/personal/view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  List<Widget> pages = const [
    MainScreen(),
    OrdersScreen(),
    FavoriteScreen(),
    PersonalScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          items: const [
            CurvedNavigationBarItem(
              child: Icon(Icons.home_outlined,color: Color(0xffEDBE2A),),
              label: 'home',labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.shopping_cart_outlined,color: Color(0xffEDBE2A),),
              label: 'orders',labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.favorite_border,color: Color(0xffEDBE2A),),
              label: 'favorite',labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.person_outline,color: Color(0xffEDBE2A),),
              label: 'Personal',labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),
            ),
          ],
          index: currentIndex,
          backgroundColor: const Color(0xffEDBE2A),
          buttonBackgroundColor: Colors.white,
          height: 55,
          color: Colors.white,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            },);
          },
        )
    );
  }
}

/*

  BottomNavigationBar(
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xffEDBE2A),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        items: List.generate(
          pages.length,
              (index) => BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/${icons[index]}.svg",
              color: currentIndex == index
                  ? const Color(0xffEDBE2A)
                  : Colors.grey,
            ),
            label: titles[index],
          ),
        ),
      ),
 */