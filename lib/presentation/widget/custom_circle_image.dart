// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/core/theme/app_colors.dart';

class CustomCircleImage extends StatelessWidget {
  final String? backGroundImage;
  final String? image;
  final double? circleheight;
  final Color? backGroundColor ;
  final Color? imageColor ;
  final BoxFit?  imageFit ;
  final double? imageHeight;
  final double? imageWidth;
  final IconData ? icon;
  final EdgeInsetsGeometry ? padding;
  final EdgeInsetsGeometry ? margin;

   CustomCircleImage({
    super.key, 
    this.image, 
    this.backGroundColor, 
    this.padding, 
    this.circleheight = 30, 
    this.backGroundImage, 
    this.imageColor, 
    this.imageFit = BoxFit.contain, 
    this.imageHeight, 
    this.imageWidth, 
    this.icon, 
    this.margin, 
  
    });

  double radius = 0;
  @override
  Widget build(BuildContext context) {
    radius = circleheight! + .3;

    return Container(
      padding: padding ??  EdgeInsets.symmetric(vertical: 6.h,horizontal: 8.w),
      margin: margin,
      height: radius.r,
      width: radius.r,
      decoration: BoxDecoration(
        color: backGroundColor ?? AppColors.green7,
        shape: BoxShape.circle,
        image:  backGroundImage!=null ? DecorationImage(image: AssetImage(backGroundImage!))
                : null
      ),
      child: icon != null 
             ? Center(
               child: Icon(
                 icon,
                 color: imageColor,
                 size: imageHeight,
                ),
             )
      
            : ( image!= null && 
             (image!.endsWith(".jpg") ||
             image!.endsWith(".png") || 
             image!.endsWith(".jpeg") ||
             image!.endsWith(".gif"))
             ) 
            ? Image.asset(image!,
              color: imageColor,
              errorBuilder: ((context, error, stackTrace) {
                return Image.asset(ImageConstant.previewIcon,
                );
              }),
              )
            : image == null 
              ? null
              :SvgPicture.asset(image!,
               height: imageHeight,
               width: imageWidth ,               
               color: imageColor,
               fit: (imageHeight !=null || imageWidth !=null ) ? BoxFit.none : imageFit!,
                placeholderBuilder: ((context) {
                return Image.asset(ImageConstant.previewIcon,
                );
              }),
          ),
    );
  }
}