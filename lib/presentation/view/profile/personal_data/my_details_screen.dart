import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/presentation/widget/custom_button.dart';
import 'package:food_delivery/presentation/widget/custom_textfield.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_style.dart';
import '../../../widget/custom_app_bar.dart';
import '../../../widget/custom_circle_image.dart';

class MyDetailsScreen extends StatefulWidget {
  const MyDetailsScreen({super.key});

  @override
  State<MyDetailsScreen> createState() => MyDetailsScreenState();
}

class MyDetailsScreenState extends State<MyDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarheight: 62.h,
        title: "My details",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 6.h,
              ),
              Container(
                height: 78.h,
                decoration: BoxDecoration(
                    color: AppColors.green7,
                    borderRadius: BorderRadius.circular(16.r)),
                child: ListTile(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return StatefulBuilder(builder: (context, setState) {
                            return GestureDetector(
                              onTap: () {
                                FocusScope.of(context).unfocus();
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom,
                                ),
                                child: Container(
                                  height: 348.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.w,
                                  ),
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius:
                                          BorderRadius.circular(16.r)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 24.h,
                                      ),
                                      Text(
                                        "Full name",
                                        style: AppStyle.nunito16darkw700h1_4,
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      CustomTextField(
                                        height: 56.h,
                                        width: 343.w,
                                        radius: 16,
                                        enableBorderColor: AppColors.green4,
                                        focusBorderColor: AppColors.green4,
                                        contentStyle: const TextStyle(
                                            color: AppColors.dark),
                                        labelText: "First Name",
                                        labelStyle:
                                            AppStyle.nunito12green2w500h1_4,
                                        hintText: "Anastasia",
                                        hintStyle:
                                            AppStyle.nunito16darkw500h1_4,
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      CustomTextField(
                                        height: 56.h,
                                        width: 343.w,
                                        radius: 16,
                                        enableBorderColor: AppColors.green4,
                                        focusBorderColor: AppColors.green4,
                                        contentStyle: const TextStyle(
                                            color: AppColors.dark),
                                        labelText: "Last Name",
                                        labelStyle:
                                            AppStyle.nunito12green2w500h1_4,
                                        hintText: "Ivanova",
                                        hintStyle:
                                            AppStyle.nunito16darkw500h1_4,
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      CustomTextField(
                                        height: 56.h,
                                        width: 343.w,
                                        radius: 16,
                                        enableBorderColor: AppColors.green4,
                                        focusBorderColor: AppColors.green4,
                                        contentStyle: const TextStyle(
                                            color: AppColors.dark),
                                        labelText: "Surname",
                                        labelStyle:
                                            AppStyle.nunito12green2w500h1_4,
                                        hintText: "Mariartivna",
                                        hintStyle:
                                            AppStyle.nunito16darkw500h1_4,
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      CustomElevatedButton(
                                          buttonColor: AppColors.green1,
                                          buttonText: "Save",
                                          buttonTextStyle:
                                              AppStyle.nunito16whitew700h1_4,
                                          onTap: () {})
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                        });
                  },
                  title: Text(
                    "First Name Last Name",
                    style: AppStyle.nunito14blackGrey3w700h1_4,
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(
                      "Anastasia",
                      style: AppStyle.nunito16darkw700h1_4,
                    ),
                  ),
                  trailing: Icon(
                    size: 18.h,
                    Icons.arrow_forward_ios,
                    color: AppColors.green2,
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Credentials",
                style: AppStyle.nunito16darkw700h1_4,
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomTextField(
                height: 56.h,
                width: 343.w,
                radius: 16,
                enableBorderColor: AppColors.green4,
                focusBorderColor: AppColors.green4,
                contentStyle: const TextStyle(color: AppColors.dark),
                labelText: "Phone",
                labelStyle: AppStyle.nunito12green2w500h1_4,
                hintText: "+7 999 123 45 67",
                hintStyle: AppStyle.nunito16darkw500h1_4,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                height: 56.h,
                width: 343.w,
                radius: 16,
                enableBorderColor: AppColors.green4,
                focusBorderColor: AppColors.green4,
                contentStyle: const TextStyle(color: AppColors.dark),
                labelText: "Email",
                labelStyle: AppStyle.nunito12green2w500h1_4,
                hintText: "User@gmail.com",
                hintStyle: AppStyle.nunito16darkw500h1_4,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                height: 56.h,
                width: 343.w,
                radius: 16,
                enableBorderColor: AppColors.green4,
                focusBorderColor: AppColors.green4,
                contentStyle: const TextStyle(color: AppColors.dark),
                labelText: "Date of Birth",
                labelStyle: AppStyle.nunito12green2w500h1_4,
                hintText: "10.06.2000 г.",
                hintStyle: AppStyle.nunito16darkw500h1_4,
              ),
              SizedBox(
                height: 64.h,
              ),
              Container(
                height: 54.h,
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 95.w),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.green1),
                    borderRadius: BorderRadius.circular(16.r)),
                child: Text(
                  "Sign out on this device",
                  style: AppStyle.nunito16green1w700h1_4,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Sign out on all devices",
                  style: AppStyle.nunito16blackGrey3w700h1_4,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Delete account",
                  style: AppStyle.nunito16errorw700h1_4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
