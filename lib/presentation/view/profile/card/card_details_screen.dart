import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/presentation/widget/custom_textfield.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_style.dart';
import '../../../widget/custom_app_bar.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_circle_image.dart';

class CardDetailsScreen extends StatefulWidget {
  const CardDetailsScreen({super.key});

  @override
  State<CardDetailsScreen> createState() => CardDetailsScreenState();
}

class CardDetailsScreenState extends State<CardDetailsScreen> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController validityController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController holderNameController = TextEditingController();
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        appBarheight: 62.h,
        title: "Card Details",
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
            Container(
              padding: EdgeInsets.all(16.h),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.green5),
                  borderRadius: BorderRadius.circular(16.r)),
              child: Column(
                children: [
                  CustomTextField(
                    maxDigitLength: 16,
                    controller: cardNumberController,
                    focusBorderColor: AppColors.green4,
                    enableBorderColor: AppColors.green4,
                    hintText: "0000 0000 0000 0000",
                    hintStyle: AppStyle.nunito16blackgrey3w500h1_4,
                    labelText: "Card number",
                    labelStyle: AppStyle.nunito12green2w500h1_4,
                    radius: 16,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      CustomTextField(
                        width: 150,
                        height: 56,
                        hintText: "00 / 00",
                        controller: validityController,
                        focusBorderColor: AppColors.green4,
                        enableBorderColor: AppColors.green4,
                        hintStyle: AppStyle.nunito16blackgrey3w500h1_4,
                        labelText: "Validity",
                        labelStyle: AppStyle.nunito12green2w500h1_4,
                        radius: 16,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomTextField(
                        maxDigitLength: 3,
                        width: 150,
                        height: 56,
                        hintText: "XXX",
                        controller: cvvController,
                        focusBorderColor: AppColors.green4,
                        enableBorderColor: AppColors.green4,
                        hintStyle: AppStyle.nunito16blackgrey3w500h1_4,
                        labelText: "CVV/CVC",
                        labelStyle: AppStyle.nunito12green2w500h1_4,
                        radius: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomTextField(
                    controller: holderNameController,
                    focusBorderColor: AppColors.green4,
                    enableBorderColor: AppColors.green4,
                    hintText: "First Name Last Name",
                    hintStyle: AppStyle.nunito16blackgrey3w500h1_4,
                    labelText: "Holder name",
                    labelStyle: AppStyle.nunito12green2w500h1_4,
                    radius: 16,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          fillColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.selected)) {
                              return AppColors.green2;
                            }
                            return AppColors.white;
                          }),
                          value: isSelected,
                          onChanged: (value) {
                            setState(() {
                              value != null
                                  ? isSelected = value
                                  : isSelected = false;
                            });
                          }),
                      Text(
                        "Remember card for next orders",
                        style: AppStyle.nunito12blackGrey3w700h1_4,
                      )
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            CustomElevatedButton(
                buttonText: "Add a card",
                buttonTextStyle: AppStyle.nunito16whitew700h1_4,
                radius: 16,
                buttonColor: AppColors.green1,
                onTap: () {
                  if (cardNumberController.text.isNotEmpty ||
                      validityController.text.isNotEmpty ||
                      cvvController.text.isNotEmpty ||
                      holderNameController.text.isNotEmpty &&
                          isSelected != false) {
                    Get.back(result: {
                      "card_number": cardNumberController.text.toString(),
                      "validity": validityController.text.toString(),
                      "cvv": cvvController.text.toString(),
                      "holder_name": holderNameController.text.toString(),
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: AppColors.green1,
                        duration: Duration(seconds: 1),
                        content: Text("Something is Missing")));
                  }
                }),
            SizedBox(
              height: 38.h,
            ),
          ],
        ),
      ),
    );
  }
}
