import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_style.dart';

class CustomHeading extends StatelessWidget {
  final String headingText;
  final TextStyle? headingStyle;
  final EdgeInsetsGeometry? padding;
  final bool iconEnable;
  final Color? iconColor;  
  final Color? iconBGColor; 
  final double? iconSize;
  final IconData? icon; 

  const CustomHeading({
    super.key, 
    required this.headingText, 
    this.headingStyle, 
    this.padding, 
    this.iconEnable = true, 
    this.iconColor, 
    this.iconBGColor, 
    this.iconSize, 
    this.icon
    
    });

  @override
  Widget build(BuildContext context) {
   return Padding(
        padding: padding ?? const EdgeInsets.only(right: 10),
        child: Row(
          children: [
        
            Text(headingText,style: headingStyle ?? AppStyle.nunito20darkw800h1_4,),
            const Spacer(),
            
            iconEnable 
            ? Container(
              height: 30.h,
              width: 30.w,
              padding: EdgeInsets.symmetric(vertical: 6.h,horizontal: 8.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:  iconBGColor ?? AppColors.green6 ,
              ),
              child: Icon( icon ?? Icons.arrow_forward_ios,
                size: iconSize ?? 15,
                color: iconColor ??  AppColors.green2,
                ),
            )
            : const SizedBox.shrink()
          ],
        ),
      );
  }
}