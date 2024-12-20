import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/presentation/view/auth/signup/signup_screen.dart';

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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'food delivery',
        theme: ThemeData(
          
          primaryColor: AppColors.green1,
          primarySwatch:Colors.green,
          useMaterial3: true,
        ),
        home: const SignUpScreen(),
      ),
    );
  }
}

