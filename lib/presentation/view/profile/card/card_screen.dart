import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/presentation/view/profile/card/card_details_screen.dart';
import 'package:food_delivery/presentation/widget/custom_button.dart';
import 'package:get/get.dart';

import '../../../../core/constant/image_constant.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_style.dart';
import '../../../widget/custom_app_bar.dart';
import '../../../widget/custom_circle_image.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => CardScreenState();
}

class CardScreenState extends State<CardScreen> {
  List<String> cardList = ["2048", "6669"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarheight: 62.h,
        title: "My cards",
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
          children: [
            SizedBox(
              height: 14.h,
            ),
            ListView.builder(
                itemCount: cardList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 56.h,
                    margin: EdgeInsets.only(bottom: 8.h),
                    width: double.maxFinite,
                    padding: EdgeInsets.all(16.h),
                    decoration: BoxDecoration(
                        color: AppColors.green7,
                        borderRadius: BorderRadius.circular(8.r)),
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
                          "* ${cardList[index]}",
                          style: AppStyle.nunito16darkw500h1_4,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            cardList.removeAt(index);
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.delete_outline,
                            color: AppColors.green2,
                          ),
                        )
                      ],
                    ),
                  );
                }),
            const Spacer(),
            CustomElevatedButton(
                buttonText: "Add a card",
                buttonTextStyle: AppStyle.nunito16whitew700h1_4,
                radius: 16,
                buttonColor: AppColors.green1,
                onTap: () async {
                  var result = await Get.to(() => const CardDetailsScreen());

                  setState(() {
                    cardList.add(result['card_number'].toString().substring(
                        result['card_number'].toString().length - 4));
                  });
                }),
            SizedBox(
              height: 38.h,
            )
          ],
        ),
      ),
    );
  }
}
