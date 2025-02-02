import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_style.dart';
import '../../../widget/custom_app_bar.dart';
import '../../../widget/custom_circle_image.dart';

class BonusesScreen extends StatefulWidget {
  const BonusesScreen({super.key});

  @override
  State<BonusesScreen> createState() => BonusesScreenState();
}

class BonusesScreenState extends State<BonusesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarheight: 62.h,
        title: "Points and bonuses",
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
              height: 6.h,
            ),
            Container(
              height: 78.h,
              decoration: BoxDecoration(
                  color: AppColors.green7,
                  borderRadius: BorderRadius.circular(16.r)),
              child: ListTile(
                  title: Text(
                    "My bonuses",
                    style: AppStyle.nunito14blackGrey3w700h1_4,
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(
                      "61 points",
                      style: AppStyle.nunito16darkw700h1_4,
                    ),
                  ),
                  trailing: SvgPicture.asset(
                    ImageConstant.infoIcon,
                    height: 18.5.h,
                  )),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 78.h,
              decoration: BoxDecoration(
                  color: AppColors.green7,
                  borderRadius: BorderRadius.circular(16.r)),
              child: ListTile(
                  onTap: () {
                    Clipboard.setData(const ClipboardData(text: "ААА117"));
                  },
                  title: Text(
                    "Copy the code and send it to a friend",
                    style: AppStyle.nunito14blackGrey3w700h1_4,
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(
                      "ААА117",
                      style: AppStyle.nunito16darkw700h1_4,
                    ),
                  ),
                  trailing: SvgPicture.asset(
                    ImageConstant.copyIcon,
                    height: 24.h,
                  )),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "History of write-offs and accruals",
              style: AppStyle.nunito16darkw700h1_4,
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.green7,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                children: [
                  ListTile(
                      dense: true,
                      title: Text(
                        "Accrued",
                        style: AppStyle.nunito16darkw700h1_4,
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 4.h),
                        child: Text(
                          "10.02.2023г",
                          style: AppStyle.nunito12blackGrey3w500h1_4,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "+500",
                            style: AppStyle.nunito16green2w700h1_4,
                          ),
                          SizedBox(
                            width: 4.5.w,
                          ),
                          Icon(
                            size: 16.h,
                            Icons.flash_on,
                            color: AppColors.green2,
                          ),
                        ],
                      )),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                    child: Divider(
                      height: 1.h,
                      color: AppColors.green5,
                    ),
                  ),
                  ListTile(
                      dense: true,
                      title: Text(
                        "Spent",
                        style: AppStyle.nunito16darkw700h1_4,
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 4.h),
                        child: Text(
                          "10.02.2023г",
                          style: AppStyle.nunito12blackGrey3w500h1_4,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "-54",
                            style: AppStyle.nunito16darkw700h1_4,
                          ),
                          SizedBox(
                            width: 4.5.w,
                          ),
                          Icon(
                            size: 16.h,
                            Icons.flash_on,
                            color: AppColors.dark,
                          ),
                        ],
                      )),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                    child: Divider(
                      height: 1.h,
                      color: AppColors.green5,
                    ),
                  ),
                  ListTile(
                      dense: true,
                      title: Text(
                        "Spent",
                        style: AppStyle.nunito16darkw700h1_4,
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 4.h),
                        child: Text(
                          "10.02.2023г",
                          style: AppStyle.nunito12blackGrey3w500h1_4,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "-4",
                            style: AppStyle.nunito16darkw700h1_4,
                          ),
                          SizedBox(
                            width: 4.5.w,
                          ),
                          Icon(
                            size: 16.h,
                            Icons.flash_on,
                            color: AppColors.dark,
                          ),
                        ],
                      )),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                    child: Divider(
                      height: 1.h,
                      color: AppColors.green5,
                    ),
                  ),
                  ListTile(
                      dense: true,
                      title: Text(
                        "Accrued",
                        style: AppStyle.nunito16darkw700h1_4,
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 4.h),
                        child: Text(
                          "10.02.2023г",
                          style: AppStyle.nunito12blackGrey3w500h1_4,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "+500",
                            style: AppStyle.nunito16green2w700h1_4,
                          ),
                          SizedBox(
                            width: 4.5.w,
                          ),
                          Icon(
                            size: 16.h,
                            Icons.flash_on,
                            color: AppColors.green2,
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 13.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Show all",
                          style: AppStyle.nunito14blackGrey3w700h1_4,
                        )),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
