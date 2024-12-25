import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/routes/app_routes.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/presentation/view/auth/succes_registration/success_registration_screen.dart';
import 'package:food_delivery/presentation/widget/custom_app_bar.dart';
import 'package:get/get.dart';

import 'presentation/view/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'food delivery',
        // initialRoute: '/',
        getPages: AppRoutes.allPages,
        theme: ThemeData(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColors.green1,
          unselectedItemColor: AppColors.blackGrey3,
          ),
          primaryColor: AppColors.green1,
          primarySwatch:Colors.green,
          useMaterial3: true,
        ),
        home: const HomeScreen()
      ),
    );
  }
}

