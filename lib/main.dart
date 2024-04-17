import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_fish/home/view.dart';
import 'core/design/routes.dart';
import 'core/logic/helper_methods.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390,844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: "Home Fish",
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        initialRoute: "/",
        onGenerateRoute: RouteGenerator.getRoute,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            elevation: 0.0,
          ),
          primarySwatch: getMaterialColor(),
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: const BorderSide(color: Color(0xffF3F3F3),width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: const BorderSide(color: Color(0xffF3F3F3),width: 2,),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: const BorderSide(color: Color(0xffF3F3F3),width: 2,),
            ),
          ),
        ),
        home: child,
      ),
      child: const HomeView(),
    );
  }
}
