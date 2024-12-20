import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/theme/app_style.dart';

import '../../core/theme/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap ;
  final double? height;
  final double? width;
  final double? radius;
  final Color? buttonColor;
  final TextStyle? buttonTextStyle ;
  final bool? isTextFieldEmpty;

   
  const CustomElevatedButton({
    super.key, 
    required this.buttonText, 
    required this.onTap, 
    this.height = 54, 
    this.width = 343, 
    this.radius, 
    this.buttonColor, 
    this.buttonTextStyle, 
    this.isTextFieldEmpty = true
    });

  @override
  Widget build(BuildContext context) {
    return Container(
              margin:  EdgeInsets.symmetric(horizontal: 16.h),
              height: height!.h,
              width: width!.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isTextFieldEmpty ==true 
                     ? buttonColor ??AppColors.green3
                     : AppColors.green1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius??16.r)
                  )
                ),
                onPressed: onTap,
              child: Text(
                buttonText,
                style: isTextFieldEmpty ==true
                      ? buttonTextStyle ?? AppStyle.nunito16green6w700h1_4
                      : AppStyle.nunito16whitew700h1_4
                      )),
     );
  }
}