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
  final Widget? prefix;
  final Widget? suffix;
  final double? radius;
  final Color? enableBorderColor;
  final Color? backGroundColor;
  final Color? focusBorderColor;
  final TextStyle? labelStyle;
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
      this.backGroundColor 
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
            autofocus: focus ?? true,
            keyboardType: keyboardType,  
            controller: controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10) ,
              filled: true, 
              fillColor: backGroundColor ?? AppColors.white,
              suffix: suffix ,
              prefix: prefix ,
              label: Text(labelText ??'',
               style: AppStyle.small.copyWith(color: AppColors.green2),),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: enableBorderColor ?? AppColors.green2),
                borderRadius: BorderRadius.circular(radius ?? 16.r)
              ),
            
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular( radius?? 16.r),
                borderSide: BorderSide(color: focusBorderColor ?? AppColors.green2,)
              ),
            ),
            ),
                            
      );
  }
}