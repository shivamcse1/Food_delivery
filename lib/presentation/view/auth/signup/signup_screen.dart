
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/core/theme/app_style.dart';
import 'package:food_delivery/presentation/widget/custom_button.dart';

import '../../../widget/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {

  TextEditingController mobileNumberController = TextEditingController();
  bool isInputEmpty = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
               SizedBox(
                  height: 77.h,
                ),
                  
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text("Delivery of products",
                   style: AppStyle.nunito49green1w900h_79,
                   textAlign: TextAlign.center,),
                ),
                  
                SizedBox(
                  height: 97.h,
                ),
                  
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 54.h),
                  child: Text("Authorization or registration",
                     style: AppStyle.heading2,
                  ),
                ),
                  
                SizedBox(
                  height: 32.h,
                ),
               
               CustomTextField(
                onChanged: (value) {
                  
                  if(value.isNotEmpty){
                    setState(() {
                     isInputEmpty = false;
                    });
                  }else{
                    setState(() {
                       isInputEmpty = true;
                    });
                  }
                },
                controller: mobileNumberController,
                labelText: "Enter phone number",
                labelStyle: AppStyle.nunito12green2w500h1_4,
                prefix: Text("+91 ",style: AppStyle.nunito16darkw500h1_4,),
                enableBorderColor: AppColors.green2,
                focusBorderColor: AppColors.green2,
               ),

                SizedBox(
                  height: 24.h,
                ),
                  
               CustomElevatedButton
               (
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                buttonText: "Confirm Login", 
                onTap: (){
                },
                isTextFieldEmpty:isInputEmpty ,
               ),   
              
                SizedBox(
                  height: 32.h,
                ),
                  
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 34.w),
                  child: Text(
                        'By clicking on the "Confirm Login" button, I agree to the terms of use of the service',
                  style: AppStyle.small.copyWith(color: AppColors.blackGrey3),
                  ),
                ),
                  
              ],
            ),
          ),
      ),
    );
  }
}