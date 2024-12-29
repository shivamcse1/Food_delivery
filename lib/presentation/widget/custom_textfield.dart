import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_style.dart';

class CustomTextField extends StatelessWidget {
  final bool? focus ;
  final bool? readOnly ;
  final TextAlign? contentAlign;
  final double? height;
  final double? width;
  final String? labelText;
  final String? hintText;
  final Widget? prefix;
  final Widget? suffix;
  final double? radius;
  final Color? enableBorderColor;
  final Color? backGroundColor;
  final Color? focusBorderColor;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final TextStyle? contentStyle;
  final TextEditingController ? controller;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  // final EdgeInsetsGeometry? contentPadding;
  final int? maxDigitLength ;
  final Function(String)? onChanged;

  const CustomTextField(
    {
      super.key, 
      this.height = 56, 
      this.width = 343, 
      this.labelText, 
      this.prefix, 
      this.suffix, 
      this.radius, 
      this.enableBorderColor, 
      this.focusBorderColor, 
      this.labelStyle, 
      this.controller, 
      this.keyboardType, 
      this.margin, 
      this.padding, 
      this.focus, 
      this.maxDigitLength, 
      this.onChanged, 
      this.contentStyle, 
      // this.contentPadding, 
      this.readOnly, 
      this.contentAlign, 
      this.backGroundColor, 
      this.hintText, 
      this.hintStyle 
      });

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: margin ,
            padding: padding ,
            height: height!.h,
            width: width!.w,
            child: TextField(
            textAlignVertical: TextAlignVertical.center,
            textAlign: contentAlign ?? TextAlign.start,
            readOnly: readOnly ?? false,
            style: contentStyle ?? AppStyle.nunito16darkw500h1_4,
            onChanged: onChanged,
            inputFormatters: [LengthLimitingTextInputFormatter(maxDigitLength)],
            autofocus: focus ?? false,
            keyboardType: keyboardType,  
            controller: controller,
            decoration: InputDecoration(
              hintStyle: hintStyle,
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10) ,
              filled: true, 
              fillColor: backGroundColor ?? AppColors.white,
              suffixIcon: suffix ,
              prefixIcon: prefix,
              labelText:labelText,
              labelStyle: labelStyle ?? AppStyle.small.copyWith(color: AppColors.green2) ,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: enableBorderColor ?? Colors.transparent),
                borderRadius: BorderRadius.circular(radius ?? 16.r)
              ),
              
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular( radius?? 16.r),
                borderSide: BorderSide(color: focusBorderColor ?? Colors.transparent)
              ),
            ),
            ),
                            
      );
  }
}