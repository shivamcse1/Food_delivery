import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/core/theme/app_style.dart';
import 'package:food_delivery/presentation/view/profile/my_address/my_address_screen.dart';
import 'package:food_delivery/presentation/view/profile/bonuses/bonuses_screen.dart';
import 'package:food_delivery/presentation/view/profile/personal_data/my_details_screen.dart';
import 'package:food_delivery/presentation/widget/custom_app_bar.dart';
import 'package:get/get.dart';

import '../../../../core/constant/image_constant.dart';
import '../../../../core/theme/app_colors.dart';
import '../order/order_bottom_sheet.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarheight: 62,
        title: "Profile",
        titleStyle: AppStyle.nunito16darkw700h1_4,
        isTitleCentered: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(
                height: 4.h,
              ),
              Container(
                height: 78.h,
                decoration: BoxDecoration(
                    color: AppColors.green7,
                    borderRadius: BorderRadius.circular(16.r)),
                child: ListTile(
                  title: Text(
                    "Account Management",
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
                height: 8.h,
              ),
              Container(
                height: 78.h,
                decoration: BoxDecoration(
                    color: AppColors.green7,
                    borderRadius: BorderRadius.circular(16.r)),
                child: ListTile(
                  title: Text(
                    "Subscribe",
                    style: AppStyle.nunito14blackGrey3w700h1_4,
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(
                      "And get 10% discount",
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
                height: 8.h,
              ),
              Row(
                children: [
                  Container(
                    width: 167.w,
                    decoration: BoxDecoration(
                        color: AppColors.green7,
                        borderRadius: BorderRadius.circular(16.r)),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      onTap: () {
                        Get.to(() => const BonusesScreen());
                      },
                      title: Text(
                        "Points and bonuses",
                        style: AppStyle.nunito14blackGrey3w700h1_4,
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Text(
                          "61 points",
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
                    width: 9.h,
                  ),
                  Container(
                    width: 167.w,
                    decoration: BoxDecoration(
                        color: AppColors.green7,
                        borderRadius: BorderRadius.circular(16.r)),
                    child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.r)),
                        onTap: () {
                          Clipboard.setData(
                              const ClipboardData(text: "ААА117"));
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: AppColors.green1,
                              padding: EdgeInsets.symmetric(vertical: 24.h),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16.r),
                                      topRight: Radius.circular(16.r))),
                              content: Center(
                                  child: Text(
                                "Code copied",
                                style: AppStyle.nunito16whitew700h1_4,
                              ))));
                        },
                        title: Text(
                          "Code for a friend",
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
                          height: 18.5.h,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const MyDetailsScreen());
                },
                child: Container(
                    height: 94.h,
                    padding:
                        EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
                    decoration: BoxDecoration(
                        color: AppColors.green7,
                        border: Border.all(color: AppColors.green1),
                        borderRadius: BorderRadius.circular(16.r)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order No. 1123445",
                              style: AppStyle.nunito16darkw700h1_4,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4.h, horizontal: 8.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.r),
                                color: AppColors.green1,
                              ),
                              child: Text(
                                "Decorated",
                                style: AppStyle.nunito12whitew700h1_4,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$38.81",
                              style: AppStyle.nunito20darkw700h1_4,
                            ),
                            Text(
                              "18:55",
                              style: AppStyle.nunito14blackGrey3w700h1_4,
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 52.h,
                decoration: BoxDecoration(
                    color: AppColors.green7,
                    borderRadius: BorderRadius.circular(16.r)),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r)),
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return DraggableScrollableSheet(
                              expand: false,
                              minChildSize: .3,
                              initialChildSize: .8,
                              maxChildSize: .9,
                              builder: (context, scrollController) {
                                return OrderBottomSheet(
                                  controller: scrollController,
                                );
                              });
                        });
                  },
                  leading: Text(
                    "Orders",
                    style: AppStyle.nunito16darkw700h1_4,
                  ),
                  trailing: Icon(
                    size: 18.h,
                    Icons.arrow_forward_ios,
                    color: AppColors.green2,
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 52.h,
                decoration: BoxDecoration(
                    color: AppColors.green7,
                    borderRadius: BorderRadius.circular(16.r)),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r)),
                  onTap: () {
                    Get.to(() => const MyAddressScreen());
                  },
                  leading: Text(
                    "Addresses",
                    style: AppStyle.nunito16darkw700h1_4,
                  ),
                  trailing: Icon(
                    size: 18.h,
                    Icons.arrow_forward_ios,
                    color: AppColors.green2,
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 52.h,
                decoration: BoxDecoration(
                    color: AppColors.green7,
                    borderRadius: BorderRadius.circular(16.r)),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r)),
                  leading: Text(
                    "Payment Information",
                    style: AppStyle.nunito16darkw700h1_4,
                  ),
                  trailing: Icon(
                    size: 18.h,
                    Icons.arrow_forward_ios,
                    color: AppColors.green2,
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 52.h,
                decoration: BoxDecoration(
                    color: AppColors.green7,
                    borderRadius: BorderRadius.circular(16.r)),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r)),
                  leading: Text(
                    "Become a partner",
                    style: AppStyle.nunito16darkw700h1_4,
                  ),
                  trailing: Icon(
                    size: 18.h,
                    Icons.arrow_forward_ios,
                    color: AppColors.green2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
