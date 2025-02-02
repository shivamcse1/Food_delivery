import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/presentation/view/profile/my_address/locality_screen.dart';
import 'package:food_delivery/presentation/widget/custom_textfield.dart';
import 'package:get/get.dart';

import '../../../../core/constant/image_constant.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_style.dart';
import '../../../widget/custom_app_bar.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_circle_image.dart';
import '../../../widget/custom_image_view.dart';

class MyAddressScreen extends StatefulWidget {
  const MyAddressScreen({super.key});

  @override
  State<MyAddressScreen> createState() => MyAddressScreenState();
}

class MyAddressScreenState extends State<MyAddressScreen> {
  String? selectedValue;
  String cityName = 'Tallinn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarheight: 62.h,
        title: "My addresses",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 14.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                "My addresses",
                style: AppStyle.nunito16darkw700h1_4,
              ),
            ),
            SizedBox(
              height: 16.h,
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
                      value: "1",
                      fillColor: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.selected)) {
                          return AppColors.green2;
                        }
                        return AppColors.blackGrey3;
                      }),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity:
                          const VisualDensity(horizontal: -4, vertical: -4),
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
                          "Tornimäe 7-9",
                          style: AppStyle.nunito14darkw700h1_4,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "3 entrance, intercom 104",
                          style: AppStyle.nunito12blackGrey4w700h1_4,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.settings,
                      color: AppColors.blackGrey3,
                      size: 24.h,
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
                      value: "2",
                      fillColor: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.selected)) {
                          return AppColors.green2;
                        }
                        return AppColors.blackGrey3;
                      }),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity:
                          const VisualDensity(horizontal: -4, vertical: -4),
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
                          "Tornimäe 7-9",
                          style: AppStyle.nunito14darkw700h1_4,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "3 entrance, intercom 104",
                          style: AppStyle.nunito12blackGrey4w700h1_4,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.settings,
                      color: AppColors.blackGrey3,
                      size: 24.h,
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
                      value: "3",
                      fillColor: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.selected)) {
                          return AppColors.green2;
                        }
                        return AppColors.blackGrey3;
                      }),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity:
                          const VisualDensity(horizontal: -4, vertical: -4),
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
                          "Tornimäe 7-9",
                          style: AppStyle.nunito14darkw700h1_4,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "3 entrance, intercom 104",
                          style: AppStyle.nunito12blackGrey4w700h1_4,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.settings,
                      color: AppColors.blackGrey3,
                      size: 24.h,
                    ),
                  ],
                )),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                const Icon(
                  Icons.add,
                  color: AppColors.green2,
                ),
                SizedBox(
                  width: 8.w,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder: (context, setS) {
                            return DraggableScrollableSheet(
                                expand: false,
                                minChildSize: .3,
                                initialChildSize: .54,
                                maxChildSize: .9,
                                builder: (context, scrollController) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom),
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topCenter,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 170.w,
                                          ),
                                          height: 5.h,
                                          width: 35.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                              color: AppColors.white),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(top: 6.h),
                                            decoration: BoxDecoration(
                                                color: AppColors.white,
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            16.r))),
                                            child: ListView(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.w),
                                              controller: scrollController,
                                              children: [
                                                SizedBox(
                                                  height: 24.h,
                                                ),
                                                Text(
                                                  "Edit address",
                                                  style: AppStyle
                                                      .nunito16darkw700h1_4,
                                                ),
                                                SizedBox(
                                                  height: 16.h,
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    String? result =
                                                        await Get.to(() =>
                                                            const LocalityScreen());
                                                    if (result != null) {
                                                      setS(() {
                                                        cityName = result;
                                                      });
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Your city",
                                                        style: AppStyle
                                                            .nunito16darkw500h1_4,
                                                      ),
                                                      const Spacer(),
                                                      Text(
                                                        cityName,
                                                        style: AppStyle
                                                            .nunito16darkw500h1_4,
                                                      ),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                      const Icon(
                                                        Icons.arrow_forward_ios,
                                                        color: AppColors.dark,
                                                        size: 18,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                CustomTextField(
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 16.h),
                                                  labelText: "Address",
                                                  enableBorderColor:
                                                      AppColors.green4,
                                                  focusBorderColor:
                                                      AppColors.green4,
                                                  labelStyle: AppStyle
                                                      .nunito12green2w500h1_4,
                                                  hintText:
                                                      "Tornimäe 7-9 Tallinn, Harju County",
                                                  hintStyle: AppStyle
                                                      .nunito16darkw500h1_4,
                                                ),
                                                CustomTextField(
                                                  labelText: "Address name",
                                                  enableBorderColor:
                                                      AppColors.green4,
                                                  focusBorderColor:
                                                      AppColors.green4,
                                                  labelStyle: AppStyle
                                                      .nunito12green2w500h1_4,
                                                  hintText:
                                                      "Home, work, office",
                                                  hintStyle: AppStyle
                                                      .nunito16blackgrey3w500h1_4,
                                                ),
                                                SizedBox(
                                                  height: 32.h,
                                                ),
                                                CustomElevatedButton(
                                                    height: 54.h,
                                                    buttonColor:
                                                        AppColors.green1,
                                                    buttonTextStyle: AppStyle
                                                        .nunito16whitew700h1_4,
                                                    buttonText: "Send",
                                                    onTap: () {}),
                                                SizedBox(
                                                  height: 8.h,
                                                ),
                                                CustomElevatedButton(
                                                    borderColor:
                                                        AppColors.green2,
                                                    borderWidth: 1.h,
                                                    height: 54.h,
                                                    buttonColor: Colors.white,
                                                    buttonTextStyle: AppStyle
                                                        .nunito16green1w700h1_4,
                                                    buttonText: "Cancel",
                                                    onTap: () {}),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                });
                          });
                        });
                  },
                  child: Text(
                    "Add new address",
                    style: AppStyle.nunito16green2w700h1_4,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
