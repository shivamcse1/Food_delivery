import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/core/constant/image_constant.dart';

class CustomImageView extends StatelessWidget {
  final String imgString;
  final double? height;
  final double? width;
  const CustomImageView(
    {
      super.key, 
      required this.imgString, 
      this.height , 
      this.width 
      });

  @override
  Widget build(BuildContext context) {
    return   (
              imgString.endsWith(".jpg") ||
              imgString.endsWith(".png") ||
              imgString.endsWith(".jpeg")||
              imgString.endsWith(".gif")
             ) 

            ? Image.asset(imgString,
              height: height,
              width: width,
              fit: BoxFit.contain,
             )
            
            : imgString.endsWith(".svg")
             
              ? SvgPicture.asset(imgString,
                height: height,
                width: width,
                fit: BoxFit.contain,
                )

              : Image.asset(ImageConstant.deliveryBoyImg);  
  }
}