import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_fish/core/design/app_button.dart';
import 'package:home_fish/core/design/app_image.dart';
import 'package:home_fish/core/design/routes.dart';
import '../../core/design/app_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              const AppImage(
                "assets/images/backgroundd.png",
              ),
              Padding(
                padding: const EdgeInsets.all(55).w,
                child: Center(
                  child: AppImage(
                    "assets/images/logo homefish.png",
                    height: 195.h,
                    width: 195.w,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 300),
                width: double.infinity.w,
                height: 520.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(60).r,
                    topLeft: const Radius.circular(60).r,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30).w,
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          AppInput(
                            labelText: "User name",
                            controller: userNameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "برجاء ادخال اسمك رباعي";
                              }
                              return null;
                            },
                            icon: "assets/images/svg/mdi_user.svg",
                            paddingBottom: 25.w,
                          ),
                          AppInput(
                            labelText: "password",
                            controller: passwordController,
                            validator: (value) {
                              if(value.toString().isEmpty)
                              {
                                return "ادخل كلمه المرور";
                              } else if (value.toString().length<8)
                              {
                                return "كلمه المرور ضعيفه";
                              }
                              return null;
                            },
                            icon: "assets/images/svg/mdi_password.svg",
                            isPassword: true,
                            paddingBottom: 25.w,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30).w,
                              child: Align(
                                alignment: AlignmentDirectional.centerEnd,
                                child: Text(
                                  "Forget password?",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff6C6767),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          isLoading ? const Center(child: CircularProgressIndicator(),):
                          AppButton(
                            text: "Login",
                            onTap: () {
                              if(formKey.currentState!.validate()){
                                isLoading = true;
                                setState(() {

                                });
                                Navigator.pushReplacementNamed(context, Routes.homeRoute);
                              }
                            },
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppImage(
                                "assets/images/divider.png",
                                width: 87.w,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16).w,
                                child: Text(
                                  "or",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              AppImage(
                                "assets/images/divider.png",
                                width: 87.w,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: AppImage(
                                  "assets/images/svg/logos_facebook.svg",
                                  height: 35.h,
                                  width: 35.w,
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: AppImage(
                                  "assets/images/svg/flat-color-icons_google.svg",
                                  height: 35.h,
                                  width: 35.w,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don’t have account?",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff7B7474),
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, Routes.registerRoute);
                                },
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    fontSize: 17.5.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
