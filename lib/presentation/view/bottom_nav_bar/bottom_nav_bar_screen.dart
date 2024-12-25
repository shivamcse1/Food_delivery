// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/core/theme/app_style.dart';
import 'package:food_delivery/presentation/view/auth/otp/otp_screen.dart';
import 'package:food_delivery/presentation/view/auth/signup/signup_screen.dart';
import 'package:food_delivery/presentation/view/auth/succes_registration/success_registration_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => BottomNavBarScreenState();
}

class BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;
  final List<Widget> data = [
    const OtpScreen(),
    const SignUpScreen(),
    const SuccessRegistrationScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: data[currentIndex] ,
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
      
        },
        
        unselectedLabelStyle: AppStyle.nunito12blackGrey3w700h1_4,
        selectedLabelStyle: AppStyle.nunito12green1w700h1_4,
        items:  [
      
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstant.homeIcon,
            height: 24.h,
            width: 24.h,
            color: currentIndex!=0 ? AppColors.blackGrey3 : AppColors.green1,
            ),
            label: "home"
          ),
      
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstant.cartIcon,
            height: 24.h,
            width: 24.h,
            color: currentIndex !=1 ? AppColors.blackGrey3 : AppColors.green1,
            ),
            label: "cart",
          ),
      
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstant.profileIcon,
            height: 24.h,
            width: 24.h,
            color: currentIndex !=2 ? AppColors.blackGrey3 : AppColors.green1,
            ),
            label: "profile"
          )
        ]
      )
    );
  }
}