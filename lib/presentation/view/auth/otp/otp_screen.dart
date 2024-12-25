import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/presentation/controller/otp_controller.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_style.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_textfield.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => OtpScreenState();
}

class OtpScreenState extends State<OtpScreen> {

 final OtpController otpController = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              
            },
            child: Container(
              margin: const EdgeInsets.only(left: 16),
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 6),
              height: 16,
              width: 16,
              decoration: const BoxDecoration(
                color: AppColors.green7,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.green1,
                
                )
            ),
          ),
        ),
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
                  padding: EdgeInsets.only(left: 88.h,right: 90),
                  child: Text("Enter code from SMS",
                     style: AppStyle.nunito20darkw700h1_4,
                  ),
                ),
                  
                SizedBox(
                  height: 8.h,
                ),
                
                Padding(
                  padding: EdgeInsets.only(left: 88.h,right: 90.h),
                  child: RichText(
                    text: TextSpan(
                      style:AppStyle.nunito16blackgrey3w500h1_4,
                      children: [
                        TextSpan(text: "We have sent a message to phone ",style: AppStyle.nunito16blackgrey3w500h1_4),
                        TextSpan(text: "+91 999 123 45 67",style: AppStyle.nunito16darkw500h1_4),
                      ]
                    ),
                  )
                ),
               

                SizedBox(
                  height: 24.h,
                ),
                 
                 Padding(
                   padding: EdgeInsets.symmetric(horizontal: 61.w),
                   child: Pinput(
                    length: 4,
                    focusedPinTheme: PinTheme(
                      margin: EdgeInsets.only(right:10.w),
                      height: 51.h,
                      width: 51.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.green5,
                        ),
                        borderRadius: BorderRadius.circular(8.r)
                      )
                    ),
                    defaultPinTheme: PinTheme(
                      margin: EdgeInsets.only(right:10.w),
                      height: 51.h,
                      width: 51.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.green5,
                        ),
                        borderRadius: BorderRadius.circular(8.r)
                      )
                    ),
                    onSubmitted: (value){
                       otpController.otpValue.value = value;
                     
                       print("submitted done$value");
                    },
                    onCompleted: (value){
                      otpController.otpValue.value = value;
                    
                    print('Comleted done$value');
                    },

                   )
                  ),
                 SizedBox(
                  height: 24.h,
                ),

                  
               CustomElevatedButton
               (
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                buttonText: "Request code via 59", 
                onTap: (){
                },
                isTextFieldEmpty:otpController.isInputEmpty.value ,
               ),   
              
                SizedBox(
                  height: 24.h,
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