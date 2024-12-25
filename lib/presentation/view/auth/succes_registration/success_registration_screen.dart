
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/core/theme/app_style.dart';
class SuccessRegistrationScreen extends StatefulWidget {
  const SuccessRegistrationScreen({super.key});

  @override
  State<SuccessRegistrationScreen> createState() => SuccessRegistrationScreenState();
}

class SuccessRegistrationScreenState extends State<SuccessRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            height: double.infinity,
            color: AppColors.green7,
            child: SingleChildScrollView(
              child: Column(
                children: [
                 SizedBox(
                    height: 75.h,
                  ),
                     
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 67.h),
                    child: Text("Thank you for registering!",
                       style: AppStyle.nunito20darkw700h1_4,
                    ),
                  ),
                    
                  SizedBox(
                    height: 36.h,
                  ),
            
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Text("Delivery of products",
                     style: AppStyle.nunito49green1w900h_79,
                     textAlign: TextAlign.center,),
                  ),
                  
                    
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50.w),
                    height: 285,
                    child: const Image(
                      image: AssetImage(ImageConstant.deliveryBoy),
                      height: 285,
                      width: 276,
                      )),
            
                  SizedBox(
                    height: 169.h,
                  ),
                 
                    
                ],
              ),
            ),
          ),
      ),
    );
  }
}