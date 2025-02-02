import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/theme/app_style.dart';

import '../../core/theme/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final double? borderWidth;
  final double? radius;
  final Color? buttonColor;
  final Color? borderColor;
  final TextStyle? buttonTextStyle;
  final bool? isTextFieldEmpty;
  final bool? isLoading;
  final EdgeInsetsGeometry? margin;

  const CustomElevatedButton(
      {super.key,
      required this.buttonText,
      required this.onTap,
      this.height = 54,
      this.width = 343,
      this.radius,
      this.buttonColor,
      this.buttonTextStyle,
      this.isTextFieldEmpty = true,
      this.margin,
      this.isLoading = false, 
      this.borderWidth, 
      this.borderColor
      
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height!.h,
      width: width!.w,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: isTextFieldEmpty == true
                  ? buttonColor ?? AppColors.green3
                  : AppColors.green1,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: borderWidth ?? 1.h,
                    color: borderColor ?? AppColors.green1),
                  borderRadius: BorderRadius.circular(radius ?? 16.r))),
          onPressed: onTap,
          child: (isLoading != null && isLoading != false)
              ? Visibility(
                  visible: isLoading!,
                  child: Container(
                    width: 25.w,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: const CircularProgressIndicator(
                      color: AppColors.green4,
                      backgroundColor: AppColors.green2,
                    ),
                  ))
              : Text(buttonText,
                  style: isTextFieldEmpty == true
                      ? buttonTextStyle ?? AppStyle.nunito16green6w700h1_4
                      : AppStyle.nunito16whitew700h1_4)),
    );
  }
}

class CustomQuantityButton extends StatelessWidget {
  final VoidCallback? onPlusTap;
  final VoidCallback? onMinusTap;
  final String? quantity;
  final double? height;
  final double? width;
  final double? radius;
  final double? iconSize;
  final Color? buttonColor;
  final Color? iconColor;
  final TextStyle? quantityStyle;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const CustomQuantityButton({
    super.key,
    this.height = 32,
    this.width = 152,
    this.radius,
    this.buttonColor,
    this.quantityStyle,
    this.margin,
    this.onPlusTap,
    this.onMinusTap,
    this.quantity = "1",
    this.padding,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        height: height!.h,
        width: width!.w,
        padding: padding ??
            EdgeInsets.symmetric(
              horizontal: 8.w,
            ),
        decoration: BoxDecoration(
            color: buttonColor,
            border: Border.all(color: AppColors.green5),
            borderRadius: BorderRadius.circular(radius ?? 8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: onMinusTap,
                child: Icon(
                  Icons.remove,
                  color: iconColor ?? AppColors.green2,
                  size: iconSize,
                )),
            Text(
              quantity!,
              style: quantityStyle ?? AppStyle.nunito16darkw700h1_4,
            ),
            InkWell(
                onTap: onPlusTap,
                child: Icon(
                  Icons.add,
                  color: iconColor ?? AppColors.green2,
                  size: iconSize,
                ))
          ],
        ));
  }
}
