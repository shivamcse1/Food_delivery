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
  final EdgeInsetsGeometry ? padding;

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
  
    });

  double radius = 0;
  @override
  Widget build(BuildContext context) {
    radius = circleheight! + .3;

    return Container(
      padding: padding ??  EdgeInsets.symmetric(vertical: 6.h,horizontal: 8.w),
      height: radius.r,
      width: radius.r,
      decoration: BoxDecoration(
        color: backGroundColor ?? AppColors.green7,
        shape: BoxShape.circle,
        image:  backGroundImage!=null ? DecorationImage(image: AssetImage(backGroundImage!))
                : null
      ),
      child: ( image!= null && 
             (image!.endsWith(".jpg") ||
             image!.endsWith(".png") || 
             image!.endsWith(".jpeg") ||
             image!.endsWith(".gif"))
             ) 
            ? Image.asset(image!,
              color: imageColor,
              fit:  imageFit ,
              height: imageHeight,
              width: imageWidth,
              errorBuilder: ((context, error, stackTrace) {
                return Image.asset(ImageConstant.previewIcon,
                );
              }),
              )
            : image == null 
              ? null
              : SvgPicture.asset(image!,
               // ignore: deprecated_member_use
               color: imageColor,
               fit: BoxFit.contain,
                placeholderBuilder: ((context) {
                return Image.asset(ImageConstant.previewIcon,
                );
              }),
              ),
    );
  }
}