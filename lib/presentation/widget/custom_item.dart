import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/core/theme/app_colors.dart';

import '../../core/theme/app_style.dart';


class CustomItem extends StatelessWidget {

  final String? itemName;
  final String? itemImage;
  final TextStyle? itemNameStyle;
  final Color? backGroundColor ;
  final double? height ;
  final double? width;
  final double? radius;
  final EdgeInsetsGeometry? namePadding ;
  final EdgeInsetsGeometry? itemMargin ;

  const CustomItem({
    super.key, 
    this.itemName, 
    this.itemImage, 
    this.itemNameStyle, 
    this.backGroundColor, 
    this.height = 94, 
    this.width = 134, 
    this.radius, 
    this.namePadding, 
    this.itemMargin
    });

  @override
  Widget build(BuildContext context) {
   return Stack(
     children:[
      Container(
      margin: itemMargin ??  const EdgeInsets.only(right: 5),
      height: height!.h,
      width: width!.w,
      padding: namePadding ?? EdgeInsets.only(left: 8.w,top: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 12.r),
        color: backGroundColor ?? AppColors.green7,
      ),
      child: Text(itemName?? '',style: itemNameStyle ?? AppStyle.nunito12darkw700h1_4,), 
      ),
      
      Positioned(
        right: 5,
        top: 10.h,
        child:  itemImage == null 
            ? Image.asset(ImageConstant.previewIcon,)
            : Image.asset(itemImage!)
        )
      ]
   );
    }
}
