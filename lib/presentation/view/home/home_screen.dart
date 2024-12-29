import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/core/theme/app_style.dart';
import 'package:food_delivery/presentation/widget/custom_app_bar.dart';
import 'package:food_delivery/presentation/widget/custom_item.dart';
import 'package:food_delivery/presentation/widget/custom_textfield.dart';

import '../../widget/custom_heading.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  
  List<Map<String,String>>  vegetableImgList = [
    {
      "image" :  ImageConstant.potatoImg,
      "name" :  "Potato"
    },
    {
      "image" :  ImageConstant.carrotsImg,
      "name" :  "Carrot"
    },
    {
      "image" :  ImageConstant.onionImg,
      "name" :  "Onion"
    }
  ];

  List<Map<String,String>> groceryImgList = [
     {
      "image" : ImageConstant.riceImg,
      "name" :  "Rice"
     },
     {
      "image" : ImageConstant.buckWheatImg,
      "name" :  "Buckwheat"
     },
     {
      "image" : ImageConstant.cousImg,
      "name" :  "Cous Cous"
     }
  ];

  List<Map<String,String>> forHomeList =[
     {
      "image" : ImageConstant.rugImg,
      "name" :  "Rug"
     },

     {
      "image" : ImageConstant.screwDriverImg,
      "name" :  "Screwdriver"
     },
     {
      "image" : ImageConstant.towelsImg,
      "name" :  "Towels"
     }
  ];

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

       body:Padding(
         padding: EdgeInsets.only(left: 16.w ),
         child: SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.h,),
            
              CustomTextField(
                hintText: "Search",
                hintStyle: AppStyle.nunito16blackgrey3w500h1_4,
                height: 50.h,
                backGroundColor: AppColors.blackGrey6,
                radius: 40,
                prefix: const Icon(Icons.search,color: AppColors.blackGrey3,),
              ),
              SizedBox(height: 24.h,),
          
              const CustomHeading(
                headingText: "Vegetables",
              ),
            
              SizedBox(height: 8.h,),
              SizedBox(
                 height: 94.h,
                 child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: vegetableImgList.length,
                  itemBuilder: (context,index){
                  return CustomItem(
                    itemName: vegetableImgList[index]['name'],
                    itemImage: vegetableImgList[index]['image'],
                  );
                 }
                ),
              ),
              SizedBox(height: 16.h,),
              CustomHeading(
                headingText: "Grocery",
                headingStyle: AppStyle.nunito20darkw800h1_4,
              ),
             
              SizedBox(height: 8.h,),
              SizedBox(
                 height: 94.h,
                 child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: groceryImgList.length,
                  itemBuilder: (context,index){
                  return CustomItem(
                    itemName: groceryImgList[index]['name'],
                    itemImage: groceryImgList[index]['image'],
                  );
                 }
                ),
              ),

              SizedBox(height: 16.h,),
              CustomHeading(
                headingText: "For home",
                headingStyle: AppStyle.nunito20darkw800h1_4,
              ),

              SizedBox(height: 8.h,),
              SizedBox(
                 height: 94.h,
                 child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: forHomeList.length,
                  itemBuilder: (context,index){
                  return CustomItem(
                    itemName: forHomeList[index]['name'],
                    itemImage: forHomeList[index]['image'],
                  );
                 }
                ),
              ),


              SizedBox(height: 16.h,),
              CustomHeading(
                headingText: "Vegetables",
                headingStyle: AppStyle.nunito20darkw800h1_4,
              ),

              SizedBox(height: 8.h,),
              SizedBox(
                 height: 94.h,
                 child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: vegetableImgList.length,
                  itemBuilder: (context,index){
                  return CustomItem(
                    itemName: vegetableImgList[index]['name'],
                    itemImage: vegetableImgList[index]['image'],
                  );
                 }
                ),
              ),


                   
            ],
           ),
         ),
       ) ,

    );
  }
}