import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/core/theme/app_style.dart';
import 'package:food_delivery/presentation/view/profile/subscription/subscription_screen.dart';
import 'package:food_delivery/presentation/widget/custom_button.dart';
import 'package:food_delivery/presentation/widget/custom_circle_image.dart';
import 'package:food_delivery/presentation/widget/custom_image_view.dart';
import 'package:get/get.dart';

import '../../widget/custom_app_bar.dart';
import 'checkout/checkout_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  List<String> priceList = ["\$11.99", "\$6.98", "\$3.94", "\$2.18", "\$3.98"];

  List<String> piecePriceList = [
    "\$13.99/piece",
    "\$12.98/piece",
    "\$5.14/piece",
    "\$2.70/piece",
    "\$4.00/kg"
  ];

  List<String> imageList = [
    ImageConstant.liorImg,
    ImageConstant.bibigoImg,
    ImageConstant.bettyImg,
    ImageConstant.hawaiianImg,
    ImageConstant.freshImg
  ];

  List<String> itemNameList = [
    "LiOR Grains | Buckwheat | 17.6 oz",
    "Bibigo Korean Style Mini Wontons Chicken 24 oz",
    "Betty Crocker Suddenly Pasta Salad, Classic, 15.5 oz",
    "Hawaiian Punch Berry Blue, Juice Drink, 1 gal bottle",
    "Fresh Clementines, 3 lb Bag"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarheight: 60,
        title: "Basket",
        isTitleCentered: true,
        titleStyle: AppStyle.nunito16darkw700h1_4,
        actions: [
          CustomCircleImage(
            margin: EdgeInsets.only(right: 16.w),
            padding: EdgeInsets.symmetric(vertical: 6.h),
            backGroundColor: AppColors.green6,
            imageWidth: 16.w,
            icon: Icons.delete_outline,
            imageHeight: 16.h,
            imageColor: AppColors.green2,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                itemCount: imageList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Divider(
                          height: 1.h,
                          color: const Color(0xFFEDF9E9),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6.w, vertical: 6.h),
                              child: CustomImageView(
                                  height: 86.h,
                                  width: 86.h,
                                  imgString: imageList[index]),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        width: 201.w,
                                        child: Text(
                                          itemNameList[index],
                                          style: AppStyle.nunito14darkw700h1_4,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    GestureDetector(
                                      onTap: () {
                                        imageList.removeAt(index);
                                        setState(() {});
                                      },
                                      child: const Icon(
                                        Icons.delete_outlined,
                                        color: AppColors.blackGrey3,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  piecePriceList[index],
                                  style: AppStyle.nunito12blackGrey3w700h1_4,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.all(4.h),
                                        decoration: BoxDecoration(
                                            color: AppColors.green2,
                                            borderRadius:
                                                BorderRadius.circular(4.r)),
                                        child: Text(
                                          priceList[index],
                                          style: AppStyle.nunito14whitew700h1_4,
                                        )),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(
                                            () => const SubscriptionScreen());
                                      },
                                      child: Text(
                                        "subscription",
                                        style: AppStyle.nunito12green2w700h1_4,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 11.w,
                                    ),
                                    const CustomQuantityButton(
                                      width: 103,
                                      radius: 16,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }),
            SizedBox(
              height: 16.h,
            ),
            Container(
              height: 78.h,
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                  color: AppColors.green7,
                  borderRadius: BorderRadius.circular(16.r)),
              child: ListTile(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.r),
                              topLeft: Radius.circular(16.r))),
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 23.h),
                          height: 212.h,
                          width: 375.w,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16.r),
                                  topLeft: Radius.circular(16.r))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Available bonus points",
                                style: AppStyle.nunito16darkw700h1_4,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              CustomQuantityButton(
                                quantityStyle: AppStyle.nunito20darkw700h1_4,
                                quantity: '787',
                                radius: 16.r,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 14.h),
                                width: 343.w,
                                height: 56.h,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              CustomElevatedButton(
                                  width: 343.w,
                                  buttonColor: AppColors.green1,
                                  buttonText: "Apply",
                                  buttonTextStyle:
                                      AppStyle.nunito16whitew700h1_4,
                                  onTap: () {}),
                            ],
                          ),
                        );
                      });
                },
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Text(
                    "Available bonuses",
                    style: AppStyle.nunito14blackGrey3w700h1_4,
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Text(
                    "61 points",
                    style: AppStyle.nunito16darkw700h1_4,
                  ),
                ),
                trailing: Icon(
                  size: 20.h,
                  Icons.arrow_forward_ios,
                  color: AppColors.green2,
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              width: 343.w,
              height: 97.h,
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
              decoration: BoxDecoration(
                color: AppColors.green7,
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: AppColors.green5, width: 1.5),
              ),
              child: Text(
                "Comment to the order",
                style: AppStyle.nunito14blackGrey3w700h1_4,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Amount without discount",
                    style: AppStyle.nunito12darkw500h1_4,
                  ),
                  Text(
                    "\$38.81",
                    style: AppStyle.nunito12darkw700h1_4,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Subscription Benefit",
                    style: AppStyle.nunito12green2w500h1_4,
                  ),
                  Text(
                    "– \$9.74",
                    style: AppStyle.nunito12green2w700h1_4,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bonus points",
                    style: AppStyle.nunito12darkw500h1_4,
                  ),
                  Text(
                    "– 61",
                    style: AppStyle.nunito12darkw700h1_4,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery",
                    style: AppStyle.nunito12darkw500h1_4,
                  ),
                  Text(
                    "free",
                    style: AppStyle.nunito12darkw700h1_4,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: AppStyle.nunito20darkw700h1_4,
                  ),
                  Text(
                    "\$29.07",
                    style: AppStyle.nunito20darkw700h1_4,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomElevatedButton(
                margin: EdgeInsets.symmetric(horizontal: 15.w),
                width: 343.w,
                buttonColor: AppColors.green1,
                buttonText: "Сheckout",
                buttonTextStyle: AppStyle.nunito16whitew700h1_4,
                onTap: () {
                  Get.to(() => const CheckOutScreen());
                }),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
