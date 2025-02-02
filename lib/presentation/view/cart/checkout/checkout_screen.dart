// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/core/theme/app_style.dart';
import 'package:food_delivery/presentation/view/cart/order_created.dart';
import 'package:food_delivery/presentation/view/profile/card/card_screen.dart';
import 'package:food_delivery/presentation/widget/custom_app_bar.dart';
import 'package:get/get.dart';

import '../../../widget/custom_button.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => CheckOutScreenState();
}

class CheckOutScreenState extends State<CheckOutScreen> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarheight: 62.h,
        isBackBtnVisible: true,
        isTitleCentered: true,
        title: "Checkout",
        onBackBtn: () {
          Get.back();
        },
        titleStyle: AppStyle.nunito16darkw700h1_4,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 14.h,
            ),
            Container(
              height: 78.h,
              width: 345.w,
              decoration: BoxDecoration(
                  color: AppColors.green7,
                  borderRadius: BorderRadius.circular(16.r)),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                title: Text(
                  "Address",
                  style: AppStyle.nunito14blackGrey3w700h1_4,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(
                    top: 8.h,
                  ),
                  child: Text(
                    "Tornimäe 7-9 Tallinn, Harju County",
                    style: AppStyle.nunito16darkw700h1_4,
                  ),
                ),
                trailing: Icon(
                  size: 15.h,
                  Icons.arrow_forward_ios,
                  color: AppColors.green2,
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 162.h,
              width: 345.w,
              decoration: BoxDecoration(
                  color: AppColors.green7,
                  borderRadius: BorderRadius.circular(16.r)),
              padding: EdgeInsets.symmetric(vertical: 14.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      "Date and time",
                      style: AppStyle.nunito14blackGrey3w700h1_4,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 16.w),
                          decoration: BoxDecoration(
                              color: AppColors.green2,
                              border: Border.all(color: AppColors.green2),
                              borderRadius: BorderRadius.circular(12.r)),
                          child: Text(
                            "Today",
                            style: AppStyle.nunito14whitew500h1_4,
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 16.w),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.green2),
                              borderRadius: BorderRadius.circular(12.r)),
                          child: Text(
                            "Tomorrow",
                            style: AppStyle.nunito14green2w500h1_4,
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 16.w),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.green2),
                              borderRadius: BorderRadius.circular(12.r)),
                          child: Text(
                            "Wed 23",
                            style: AppStyle.nunito14green2w500h1_4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16.r),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              border: Border.all(color: AppColors.green2),
                              borderRadius: BorderRadius.circular(12.r)),
                          child: Text(
                            "08:00 - 29:00",
                            style: AppStyle.nunito14green2w500h1_4,
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(16.r),
                          decoration: BoxDecoration(
                              color: AppColors.green2,
                              border: Border.all(color: AppColors.green2),
                              borderRadius: BorderRadius.circular(12.r)),
                          child: Text(
                            "09:00 - 14:00",
                            style: AppStyle.nunito14whitew500h1_4,
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(16.r),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              border: Border.all(color: AppColors.green2),
                              borderRadius: BorderRadius.circular(12.r)),
                          child: Text(
                            "04:00 - 19:00",
                            style: AppStyle.nunito14green2w500h1_4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 78.h,
              width: 345.w,
              decoration: BoxDecoration(
                  color: AppColors.green7,
                  borderRadius: BorderRadius.circular(16.r)),
              child: ListTile(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return PaymentMethodBottomSheet(
                          selectedValue: selectedValue,
                        );
                      });
                },
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                title: Text(
                  "Payment method",
                  style: AppStyle.nunito14blackGrey3w700h1_4,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(
                    top: 8.h,
                  ),
                  child: Row(
                    children: [
                      Image.asset(ImageConstant.visaLogoImg),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "*2048",
                        style: AppStyle.nunito16darkw700h1_4,
                      ),
                    ],
                  ),
                ),
                trailing: Icon(
                  size: 15.h,
                  Icons.arrow_forward_ios,
                  color: AppColors.green2,
                ),
              ),
            ),
            const Spacer(),
            CustomElevatedButton(
                radius: 16,
                buttonColor: AppColors.green1,
                buttonText: "Pay 1691 ₽",
                buttonTextStyle: AppStyle.nunito16whitew700h1_4,
                onTap: () {
                  Get.to(() => const OrderCreated());
                }),
            SizedBox(
              height: 23.h,
            )
          ],
        ),
      ),
    );
  }
}

class PaymentMethodBottomSheet extends StatefulWidget {
  String? selectedValue;
  String? title;
  String? buttonText;
  PaymentMethodBottomSheet({
    super.key,
    this.selectedValue,
    this.title,
    this.buttonText,
  });

  @override
  State<PaymentMethodBottomSheet> createState() =>
      PaymentMethodBottomSheetState();
}

class PaymentMethodBottomSheetState extends State<PaymentMethodBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.r),
        topRight: Radius.circular(16.r),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24.h,
          ),
          Text(
            widget.title == null ? "Payment method" : widget.title!,
            style: AppStyle.nunito16darkw700h1_4,
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 60.h,
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const CardScreen());
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.w, vertical: 2.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        border: Border.all(color: AppColors.green2)),
                    child: const Icon(
                      Icons.add,
                      color: AppColors.green2,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "New card",
                  style: AppStyle.nunito16darkw500h1_4,
                ),
                const Spacer(),
                Radio(
                    fillColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.selected)) {
                        return AppColors.green2;
                      }
                      return AppColors.blackGrey3;
                    }),
                    value: "1",
                    groupValue: widget.selectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        widget.selectedValue = newValue.toString();
                      });
                    })
              ],
            ),
          ),
          Divider(
            height: 1.h,
            color: AppColors.green5,
          ),
          Container(
            height: 56,
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            child: Row(
              children: [
                SizedBox(
                  height: 28,
                  width: 42.6.w,
                  child: Image.asset(
                    ImageConstant.visaLogoImg,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "* 2048",
                  style: AppStyle.nunito16darkw500h1_4,
                ),
                const Spacer(),
                Radio(
                    value: "2",
                    fillColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.selected)) {
                        return AppColors.green2;
                      }
                      return AppColors.blackGrey3;
                    }),
                    groupValue: widget.selectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        widget.selectedValue = newValue.toString();
                      });
                    })
              ],
            ),
          ),
          Divider(
            height: 1.h,
            color: AppColors.green5,
          ),
          Container(
              height: 56,
              width: double.maxFinite,
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  SizedBox(
                    height: 28,
                    width: 42.6.w,
                    child: Image.asset(
                      ImageConstant.visaLogoImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    "* 0000",
                    style: AppStyle.nunito16darkw500h1_4,
                  ),
                  const Spacer(),
                  Radio(
                      value: "3",
                      fillColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.selected)) {
                          return AppColors.green2;
                        }
                        return AppColors.blackGrey3;
                      }),
                      groupValue: widget.selectedValue,
                      onChanged: (newValue) {
                        setState(() {
                          widget.selectedValue = newValue.toString();
                        });
                      })
                ],
              )),
          Divider(
            height: 1.h,
            color: AppColors.green5,
          ),
          Container(
              height: 56,
              width: double.maxFinite,
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "By card upon receipt",
                    style: AppStyle.nunito16darkw500h1_4,
                  ),
                  const Spacer(),
                  Radio(
                      value: "4",
                      fillColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.selected)) {
                          return AppColors.green2;
                        }
                        return AppColors.blackGrey3;
                      }),
                      groupValue: widget.selectedValue,
                      onChanged: (newValue) {
                        setState(() {
                          widget.selectedValue = newValue.toString();
                        });
                      })
                ],
              )),
          Divider(
            height: 1.h,
            color: AppColors.green5,
          ),
          Container(
              height: 56,
              width: double.maxFinite,
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "Cash upon receipt",
                    style: AppStyle.nunito16darkw500h1_4,
                  ),
                  const Spacer(),
                  Radio(
                      value: "5",
                      fillColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.selected)) {
                          return AppColors.green2;
                        }
                        return AppColors.blackGrey3;
                      }),
                      groupValue: widget.selectedValue,
                      onChanged: (newValue) {
                        setState(() {
                          widget.selectedValue = newValue.toString();
                        });
                      })
                ],
              )),
          Divider(
            height: 1.h,
            color: AppColors.green5,
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomElevatedButton(
              buttonColor: AppColors.green1,
              buttonTextStyle: AppStyle.nunito16whitew700h1_4,
              buttonText:
                  widget.buttonText == null ? "Choose" : widget.buttonText!,
              onTap: () {
                Get.back();
              })
        ],
      ),
    );
  }
}
