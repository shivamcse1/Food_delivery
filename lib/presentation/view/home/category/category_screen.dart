import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/presentation/widget/custom_item_card.dart';
import '../../../../core/theme/app_style.dart';
import '../../../widget/custom_app_bar.dart';
import '../../../widget/custom_circle_image.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<String> imageList = [
    ImageConstant.yellowPotatoImg,
    ImageConstant.paperTowelsImg,
    ImageConstant.birloSinoBolImg,
    ImageConstant.finishClassicImg
  ];
 
  List<String> filterList = ["All","For Washing","Carrot","For Home"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarheight: 62.h,
        leadingPadding: EdgeInsets.only(left: 16.w),
        isBackBtnVisible: true,
        title: "Household chemicals",
        titleStyle: AppStyle.nunito16darkw700h1_4,
        isTitleCentered: true,
        actions: [
             
            CustomCircleImage(
              margin: EdgeInsets.only(right: 16.w),
              icon: Icons.search,
              imageColor: AppColors.green2,
              imageHeight: 16.h,
            )
        ],
       ),

     body: Padding(
       padding: EdgeInsets.only(left: 16.w),
       child: SingleChildScrollView(
         child: Column(
          children: [
              SizedBox(height: 8.h,),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 36.h,
                  child: Row(
                    children: [
                  
                      Container(
                        height: 36.h,
                        width: 36.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.green1
                        ),
                          borderRadius: BorderRadius.circular(12.r)
                        ),
                        child: const Icon(Icons.filter_list,color: AppColors.green1,),
                      ),
                      
                      SizedBox(width: 4.w,),
                      ListView.builder(
                        itemCount: filterList.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index){
                        return Container(
                          margin: EdgeInsets.only(right: 4.w),
                          height: 36.h,
                          padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
                           decoration: BoxDecoration(
                            color: index==0 ? AppColors.green1 : AppColors.white,
                           border: Border.all(color: AppColors.green1),
                           borderRadius: BorderRadius.circular(12.r)
                           ),
                           
                          child: Text(filterList[index],style: index==0 ?   AppStyle.nunito14whitew500h1_4 :  AppStyle.nunito14blackGrey3w500h1_4,),
                        
                        );
                      })
                    ],
                  ),
                ),
              ),

              SizedBox(height: 24.w,),

              GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .6
                  ),
                itemBuilder: (context,index) {
                  return CustomItemCard(
                    image: imageList[index> imageList.length ? index=1 : index],
                    index: index,
                    );
                }
              ),

          
             
          ],
         ),
       ),
     ),  
    );
  }
}