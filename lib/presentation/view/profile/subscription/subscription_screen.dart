import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/presentation/widget/custom_button.dart';
import 'package:food_delivery/presentation/widget/custom_image_view.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_style.dart';
import '../../../widget/custom_app_bar.dart';
import '../../../widget/custom_circle_image.dart';
import '../../cart/checkout/checkout_screen.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => SubscriptionScreenState();
}

class SubscriptionScreenState extends State<SubscriptionScreen> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          appBarheight: 32.h,
          title: "Subscription",
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
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    Container(
                        width: double.maxFinite,
                        height: 272.h,
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          gradient: const LinearGradient(
                            end: Alignment.topRight,
                            begin: Alignment.bottomRight,
                            colors: [
                              Color(0xFFFFDE51),
                              Color(0xFF45BC1B),
                            ],
                            stops: [0.0035, 0.9881],
                            transform:
                                GradientRotation(101 * (3.1415927 / 180)),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 12.h,
                            ),
                            CustomImageView(
                              height: 140.h,
                              width: 140.w,
                              imgString: ImageConstant.subscriptionImg,
                            ),
                            SizedBox(
                              height: 19.h,
                            ),
                            Text(
                              "Subscribe to pay less!",
                              style: AppStyle.nunito24whitew700h1_2,
                            ),
                            SizedBox(
                              height: 13.h,
                            ),
                            Text(
                              "Subscription discount 15% on all products",
                              style: AppStyle.nunito14whitew700h1_4,
                            )
                          ],
                        )),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "Buy a subscription",
                      style: AppStyle.nunito16darkw700h1_4,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                        height: 56.h,
                        padding: EdgeInsets.only(left: 15.w, right: 16.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: AppColors.green7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: -4),
                              value: "\$0.99",
                              groupValue: selectedValue,
                              onChanged: (newValue) {
                                setState(() {
                                  selectedValue = newValue;
                                });
                              },
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                "1 month",
                                style: AppStyle.nunito14darkw700h1_4,
                              ), // Title
                            ),
                            const Spacer(),
                            Text(
                              "\$0.99",
                              style: AppStyle.nunito16darkw700h1_4,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                        height: 73.h,
                        padding: EdgeInsets.only(
                          left: 15.w,
                          right: 16.w,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: AppColors.green7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio(
                              value: "\$2.60",
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: -4),
                              groupValue: selectedValue,
                              onChanged: (newValue) {
                                setState(() {
                                  selectedValue = newValue;
                                });
                              },
                            ),
                            SizedBox(width: 16.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "3 month",
                                  style: AppStyle.nunito14darkw700h1_4,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  "10% cheaper",
                                  style: AppStyle.nunito12green2w700h1_4,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  "\$2.60",
                                  style: AppStyle.nunito16blackgrey3w500h1_4
                                      .copyWith(
                                          decoration:
                                              TextDecoration.lineThrough),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "\$0.99",
                                  style: AppStyle.nunito16darkw700h1_4,
                                ),
                              ],
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                        height: 73.h,
                        padding: EdgeInsets.only(left: 15.w, right: 16.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: AppColors.green7),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio(
                                value: "\$7.60",
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: -4),
                                groupValue: selectedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedValue = newValue;
                                  });
                                },
                              ),
                              const SizedBox(width: 16),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "6 month",
                                    style: AppStyle.nunito14darkw700h1_4,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Text(
                                    "15% cheaper",
                                    style: AppStyle.nunito12green2w700h1_4,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Text(
                                    "\$7.60",
                                    style: AppStyle.nunito16blackgrey3w500h1_4
                                        .copyWith(
                                            decoration:
                                                TextDecoration.lineThrough),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "\$6.99",
                                    style: AppStyle.nunito16darkw700h1_4,
                                  ),
                                ],
                              ),
                            ])),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                        height: 73.h,
                        padding: EdgeInsets.only(left: 15.w, right: 16.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: AppColors.green7),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio(
                                value: "\$13.60",
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: -4),
                                groupValue: selectedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedValue = newValue;
                                  });
                                },
                              ),
                              const SizedBox(width: 16),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Yearly Subscription",
                                    style: AppStyle.nunito14darkw700h1_4,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Text(
                                    "20% cheaper",
                                    style: AppStyle.nunito12green2w700h1_4,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Text(
                                    "\$13.60",
                                    style: AppStyle.nunito16blackgrey3w500h1_4
                                        .copyWith(
                                            decoration:
                                                TextDecoration.lineThrough),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "\$9.99",
                                    style: AppStyle.nunito16darkw700h1_4,
                                  ),
                                ],
                              )
                            ])),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomElevatedButton(
                        buttonText: selectedValue == null
                            ? "Subscribe"
                            : "Subscribe for $selectedValue",
                        buttonColor: AppColors.green1,
                        buttonTextStyle: AppStyle.nunito16whitew700h1_4,
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return PaymentMethodBottomSheet(
                                  buttonText: selectedValue == null
                                      ? "Subscribe"
                                      : "Subscribe for $selectedValue",
                                  title: "Choose a card for payment",
                                  selectedValue: selectedValue,
                                );
                              });
                        }),
                    SizedBox(
                      height: 34.h,
                    ),
                  ]),
            )));
  }
}
