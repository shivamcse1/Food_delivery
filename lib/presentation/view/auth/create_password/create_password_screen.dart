import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/theme/app_style.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_textfield.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => CreatePasswordScreenState();
}

class CreatePasswordScreenState extends State<CreatePasswordScreen> {
  TextEditingController createPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
               SizedBox(
                  height: 62.h,
                ),
                  
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text("Delivery of products",
                   style: AppStyle.nunito49green1w900h_79,
                   textAlign: TextAlign.center,),
                ),
                  
                SizedBox(
                  height: 30.h,
                ),
                  
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 54.h),
                  child: Text("Create a password",
                     style: AppStyle.nunito20darkw700h1_4,
                  ),
                ),
                  
                SizedBox(
                  height: 32.h,
                ),
               
               CustomTextField(
                height: 56,
                width: 343,
                radius: 16,
                enableBorderColor: AppColors.green4,
                focusBorderColor: AppColors.green4,
                contentStyle: const TextStyle(color: AppColors.blackGrey3),
                onChanged: (value) {
                  
                  if(value.isNotEmpty){
                    setState(() {
                    //  isInputEmpty = false;
                    });
                  }else{
                    setState(() {
                      //  isInputEmpty = true;
                    });
                  }
                },
                controller: createPasswordController,
                labelText: "Create a password",
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
                onChanged: (value) {
                  if(value.isNotEmpty){
                    setState(() {
                    //  isInputEmpty = false;
                    });
                  }else{
                    setState(() {
                      //  isInputEmpty = true;
                    });
                  }
                },
                controller: confirmPasswordController,
                labelText: "Repeat password",
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
              
               
              ],
            ),
          ),
      ),
    );
 
  }
}