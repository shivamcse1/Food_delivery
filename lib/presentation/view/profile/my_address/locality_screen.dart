import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/theme/app_style.dart';
import 'package:food_delivery/presentation/widget/custom_textfield.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../widget/custom_app_bar.dart';
import '../../../widget/custom_circle_image.dart';

class LocalityScreen extends StatefulWidget {
  const LocalityScreen({super.key});

  @override
  State<LocalityScreen> createState() => _LocalityScreenState();
}

class _LocalityScreenState extends State<LocalityScreen> {
  List<Map<String, String>> filterList = [];
  List<Map<String, String>> localityList = [
    {"city": "Tallinn", "state": "Harju"},
    {"city": "Tartu", "state": "Tartu"},
    {"city": "Narva", "state": "Ida-Viru"},
    {"city": "Kohtla-Järve", "state": "Ida-Viru"},
    {"city": "Haapsalu", "state": "Lääne"},
    {"city": "Jõgeva", "state": "Jõgeva"},
    {"city": "Põltsamaa", "state": "Jõgeva"},
    {"city": "Narva-Jõesuu", "state": "Ida-Viru"},
  ];

  @override
  void initState() {
    super.initState();
    filterList = localityList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarheight: 62.h,
        title: "Locality",
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
            children: [
              SizedBox(
                height: 14.h,
              ),
              CustomTextField(
                onChanged: (query) {
                  if (query.isEmpty) {
                    filterList = localityList;
                    setState(() {});
                    return filterList;
                  }
                  filterList = localityList.where((items) {
                    return items['city']!
                        .toLowerCase()
                        .contains(query.toLowerCase());
                  }).toList();
                  setState(() {});
                },
                height: 50,
                backGroundColor: AppColors.blackGrey6,
                radius: 40,
                prefix: const Icon(
                  Icons.search,
                  color: AppColors.blackGrey3,
                ),
                hintText: "Search by city",
                hintStyle: AppStyle.nunito16blackgrey3w500h1_4,
              ),
              SizedBox(
                height: 14.h,
              ),
              ListView.builder(
                  itemCount: filterList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Get.back(
                         result: filterList[index]["city"]
                        );

                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            filterList[index]["city"]!,
                            style: AppStyle.nunito16darkw700h1_4,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            filterList[index]["state"]!,
                            style: AppStyle.nunito16blackgrey3w500h1_4,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Divider(
                            height: 1.h,
                            color: AppColors.blackGrey6,
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
