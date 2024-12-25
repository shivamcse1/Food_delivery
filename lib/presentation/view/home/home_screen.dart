import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/core/theme/app_style.dart';
import 'package:food_delivery/presentation/widget/custom_app_bar.dart';

import '../../widget/custom_image_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Your city",
        titleStyle: AppStyle.nunito16blackGrey3w700h1_4,
        actions: [
          SvgPicture.asset(
            ImageConstant.locationIcon
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text("Tallin",style:AppStyle.nunito16blackGrey3w700h1_4 ,),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: const Icon(Icons.keyboard_arrow_down_sharp,color: AppColors.blackGrey3,),
          )
        ],
       ) ,

    );
  }
}