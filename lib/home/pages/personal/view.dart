import 'package:flutter/material.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Profile",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: const Icon(Icons.arrow_back_ios,),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xffEDBE2A),
              foregroundImage: NetworkImage(
                  "https://avatars.mds.yandex.net/i?id=a2b32ce1518567a7a0ec7c08e26b6c2c3635d288-12422703-images-thumbs&n=13",
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              textAlign: TextAlign.center,
                "Omar Elgmmal",
              style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 40,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: 322,
              height: 53,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffEDBE2A,),
                )
              ),
              child: const Row(
                children: [
                  Icon(Icons.person,color: Color(0xffEDBE2A,),),
                  SizedBox(width: 7,),
                  Text(
                      "Your Profile",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
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
