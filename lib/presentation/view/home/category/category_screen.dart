import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/image_constant.dart';
import '../../../../core/theme/app_style.dart';
import '../../../widget/custom_app_bar.dart';
import '../../../widget/custom_circle_image.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingPadding: EdgeInsets.only(left: 16.w),
        isBackBtnVisible: true,
        title: "Household chemicals",
        titleStyle: AppStyle.nunito16darkw700h1_4,
        isTitleCentered: true,
        actions: [
          SvgPicture.asset(
            ImageConstant.locationIcon
          ),
        ],
       ),

     body: Column(
      children: [

        CustomCircleImage(
         
        image: ImageConstant.backIcon,
        ),
         
      ],
     ),  
    );
  }
}