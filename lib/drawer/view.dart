import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_fish/core/design/routes.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(bottom: 5),
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Omar Elgmmal"),
            accountEmail: Text("omarelgmmal23@gmail.com"),
            currentAccountPicture: CircleAvatar(
              foregroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1759184622011723776/2T5No_41_400x400.jpg",),
            ),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Liked",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: const Icon(CupertinoIcons.heart),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Address",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: const Icon(CupertinoIcons.home),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Language",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: const Icon(Icons.language_outlined),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: const Icon(CupertinoIcons.lock),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.cartRoute);
            },
            title: const Text("Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: const Icon(CupertinoIcons.cart_badge_plus),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.productsRoute);
            },
            title: const Text("Products",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: const Icon(Icons.production_quantity_limits_sharp),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.myOrderRoute);
            },
            title: const Text("My Orders",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: const Icon(Icons.shopping_cart_outlined),
          ),
          ListTile(
            onTap: () {},
            title: const Text("My Log out",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: const Icon(Icons.login_outlined),
          ),
        ],
      ),
    );
  }
}
