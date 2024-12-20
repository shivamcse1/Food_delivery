// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/constant/app_constant.dart';

import 'app_colors.dart';

class AppStyle{

  static TextStyle get heading1 => TextStyle(
  fontFamily: AppConstant.appFontFamily,
  fontSize: 24.sp,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  height: 1.4
    );

  static TextStyle get heading2 => TextStyle(
  fontFamily:AppConstant.appFontFamily,
  fontSize: 20.sp,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  height: 1.4
  );

  static TextStyle get largeBold => TextStyle(
  fontFamily: AppConstant.appFontFamily,
  fontSize: 16.sp,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  height: 1.4
    );

  static TextStyle get large => TextStyle(
  fontFamily: AppConstant.appFontFamily,
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  height: 1.4
    );

  static TextStyle get mediumBold => TextStyle(
  fontFamily: AppConstant.appFontFamily,
  fontSize: 14.sp,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  height: 1.4
    );

  static TextStyle get medium => TextStyle(
  fontFamily: AppConstant.appFontFamily,
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  height: 1.4
    );

  static TextStyle get smallBold => TextStyle(
  fontFamily: AppConstant.appFontFamily,
  fontSize: 12.sp,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  height: 1.4
    );

  static TextStyle get small => TextStyle(
  fontFamily: AppConstant.appFontFamily,
  fontSize: 12.sp,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  height: 1.4
    );


  
  static TextStyle get nunito12green1w400h1_4 => TextStyle(
    fontFamily: AppConstant.appFontFamily,
    fontSize: 12.sp,
    color: AppColors.green1,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  static TextStyle get nunito12green1w500h1_4 => TextStyle(
    fontFamily: AppConstant.appFontFamily,
    fontSize: 12.sp,
    color: AppColors.green1,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  static TextStyle get nunito12green2w500h1_4 => TextStyle(
    fontFamily: AppConstant.appFontFamily,
    fontSize: 12.sp,
    color: AppColors.green2,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  static TextStyle get nunito12green1w600h1_4 => TextStyle(
    fontFamily: AppConstant.appFontFamily,
    fontSize: 12.sp,
    color: AppColors.green1,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  static TextStyle get nunito12green1w700h1_4 => TextStyle(
    fontFamily: AppConstant.appFontFamily,
    fontSize: 12.sp,
    color: AppColors.green1,
    fontWeight: FontWeight.w700,
    height: 1.4,
  );

  static TextStyle get nunito14green1w400h1_4 => TextStyle(
    fontFamily: AppConstant.appFontFamily,
    fontSize: 14.sp,
    color: AppColors.green1,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  static TextStyle get nunito16darkw500h1_4 =>TextStyle(
        fontFamily: AppConstant.appFontFamily,
        fontSize: 16.sp,
        color: AppColors.dark,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 1.4,
  );
  static TextStyle get nunito16green1w700h1_4 =>TextStyle(
        fontFamily: AppConstant.appFontFamily,
        fontSize: 16.sp,
        color: AppColors.green1,
        fontWeight: FontWeight.w700,
        height: 1.4,
  );

  static TextStyle get nunito16green6w700h1_4 =>TextStyle(
        fontFamily: AppConstant.appFontFamily,
        fontSize: 16.sp,
        color: AppColors.green6,
        fontWeight: FontWeight.w700,
        height: 1.4,
  );

  static TextStyle get nunito16whitew700h1_4 =>TextStyle(
        fontFamily: AppConstant.appFontFamily,
        fontSize: 16.sp,
        color: AppColors.white,
        fontWeight: FontWeight.w700,
        height: 1.4,
  );


  static TextStyle get nunito49green1w900h_79 => TextStyle(
       fontFamily: AppConstant.appFontFamily,
       fontSize: 49.sp,
       color: AppColors.green1,
       fontWeight: FontWeight.w900,
       height: .79
  );

}