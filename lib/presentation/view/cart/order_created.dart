import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/core/theme/app_style.dart';
import 'package:food_delivery/presentation/widget/custom_app_bar.dart';
import 'package:food_delivery/presentation/widget/custom_button.dart';
import 'package:food_delivery/presentation/widget/custom_circle_image.dart';
import 'package:get/get.dart';

class OrderCreated extends StatefulWidget {
  const OrderCreated({super.key});

  @override
  State<OrderCreated> createState() => OrderCreatedState();
}

class OrderCreatedState extends State<OrderCreated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarheight: 54.h,
        title: "Order 5838538",
        isBackBtnVisible: true,
        isTitleCentered: true,
        onBackBtn: () {
          Get.back();
        },
        titleStyle: AppStyle.nunito16darkw700h1_4,
        actions: [
          CustomCircleImage(
            margin: EdgeInsets.only(right: 16.w),
            padding: EdgeInsets.symmetric(vertical: 6.h),
            backGroundColor: AppColors.green6,
            imageWidth: 16.w,
            icon: Icons.search,
            imageHeight: 16.h,
            imageColor: AppColors.green2,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 175.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 143.w),
            child: SvgPicture.asset(ImageConstant.successfulSignIcon),
          ),
          SizedBox(
            height: 208.h,
          ),
          Text(
            "Order created!",
            style: AppStyle.nunito20darkw700h1_4,
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 57.5.w),
            child: Text(
              "We started to collect it, expect a call from the courier.",
              style: AppStyle.nunito16darkw500h1_4,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 74.h,
          ),
          CustomElevatedButton(
              buttonText: "To main",
              buttonColor: AppColors.green1,
              buttonTextStyle: AppStyle.nunito16whitew700h1_4,
              onTap: () {})
        ],
      ),
    );
  }
}
