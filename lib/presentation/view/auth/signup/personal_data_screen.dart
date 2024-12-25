import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/theme/app_style.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_textfield.dart';

class PersonalDataScreen extends StatefulWidget {
  const PersonalDataScreen({super.key});

  @override
  State<PersonalDataScreen> createState() => PersonalDataScreenState();
}

class PersonalDataScreenState extends State<PersonalDataScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController referralCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
               SizedBox(
                  height: 60.h,
                ),
                  
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text("Delivery of products",
                   style: AppStyle.nunito49green1w900h_79,
                   textAlign: TextAlign.center,),
                ),
                  
                SizedBox(
                  height: 34.h,
                ),
                  
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 110.h),
                  child: Text("Let's get acquainted!",
                     style: AppStyle.nunito16darkw700h1_4,
                  ),
                ),
                  
                SizedBox(
                  height: 40.h,
                ),
               
               CustomTextField(
                height: 56,
                width: 343,
                radius: 16,
                enableBorderColor: AppColors.green4,
                focusBorderColor: AppColors.green4,
                contentStyle: const TextStyle(color: AppColors.blackGrey3),
                controller: nameController,
                labelText: "Your name",
                labelStyle: AppStyle.nunito12green2w500h1_4,
               ),

                SizedBox(
                  height: 16.h,
                ),

               CustomTextField(
                height: 56,
                width: 343,
                radius: 16,
                enableBorderColor: AppColors.green4,
                focusBorderColor: AppColors.green4,
                contentStyle: const TextStyle(color: AppColors.blackGrey3),
                controller: dobController,
                labelText: "Date of Birth",
                labelStyle: AppStyle.nunito12green2w500h1_4,
               ),

              SizedBox(
                  height: 16.h,
              ),

               CustomTextField(
                height: 56,
                width: 343,
                radius: 16,
                enableBorderColor: AppColors.green4,
                focusBorderColor: AppColors.green4,
                contentStyle: const TextStyle(color: AppColors.blackGrey3),
                controller: referralCodeController,
                labelText: "Referral code",
                labelStyle: AppStyle.nunito12green2w500h1_4,
               ),
               
              SizedBox(
                  height: 24.h,
              ),
               CustomElevatedButton
               ( 
                buttonColor: AppColors.green1,
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                buttonText: "Continue", 
                buttonTextStyle:AppStyle.nunito16whitew700h1_4,
                onTap: (){
                },
               ), 

               SizedBox(
                  height: 182.h,
              ), 

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 137.h),
                child: InkWell(
                  onTap: (){

                  },
                  child: Text("Skip this step",
                      style: AppStyle.nunito16green2w700h1_4,
                  ),
                ),
              ), 
              
               
              ],
            ),
          ),
      ),
    );
 
  }
}