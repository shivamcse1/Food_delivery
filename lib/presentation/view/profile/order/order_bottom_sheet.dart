import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/core/theme/app_style.dart';
import 'package:food_delivery/presentation/widget/custom_button.dart';

import '../../../widget/custom_image_view.dart';

// ignore: must_be_immutable
class OrderBottomSheet extends StatefulWidget {
  ScrollController controller;
  OrderBottomSheet({super.key, required this.controller});

  @override
  State<OrderBottomSheet> createState() => OrderBottomSheetState();
}

class OrderBottomSheetState extends State<OrderBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(
            horizontal: 170.w,
          ),
          height: 5.h,
          width: 35.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.white),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 6.h),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(16.r))),
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              controller: widget.controller,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Order No. 1123445",
                    style: AppStyle.nunito16darkw700h1_4,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: CustomElevatedButton(
                      width: 122.w,
                      height: 38.h,
                      radius: 8,
                      buttonColor: AppColors.green1,
                      buttonText: "Decorated",
                      buttonTextStyle: AppStyle.nunito16whitew700h1_4,
                      onTap: () {}),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Order list",
                  style: AppStyle.nunito20darkw700h1_4,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Divider(
                    height: 1.h,
                    color: AppColors.green6,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                      child: CustomImageView(
                          height: 98.h,
                          width: 98.w,
                          imgString: ImageConstant.hawaiianImg),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 212.w,
                            child: Text(
                              "Hawaiian Punch Berry Blue, Juice Drink, 1 gal bottle",
                              style: AppStyle.nunito14darkw700h1_4,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            )),
                        SizedBox(
                          height: 28.h,
                        ),
                        Text(
                          "\$2.70",
                          style: AppStyle.nunito20darkw700h1_4,
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Divider(
                    height: 1.h,
                    color: AppColors.green6,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                      child: CustomImageView(
                          height: 98.h,
                          width: 98.w,
                          imgString: ImageConstant.bettyImg),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 212.w,
                            child: Text(
                              "Betty Crocker Suddenly Pasta Salad, Classic, 15.5 oz",
                              style: AppStyle.nunito14darkw700h1_4,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            )),
                        SizedBox(
                          height: 28.h,
                        ),
                        Text(
                          "\$5.14",
                          style: AppStyle.nunito20darkw700h1_4,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Divider(
                    height: 1.h,
                    color: AppColors.green6,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order price",
                      style: AppStyle.nunito20darkw700h1_4,
                    ),
                    Text(
                      "\$7.84",
                      style: AppStyle.nunito20darkw700h1_4,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "12.03.2023",
                      style: AppStyle.nunito16blackgrey3w500h1_4,
                    ),
                    Text(
                      "18:56",
                      style: AppStyle.nunito16blackgrey3w500h1_4,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
