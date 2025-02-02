import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/constant/image_constant.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/core/theme/app_style.dart';
import 'package:food_delivery/presentation/widget/custom_app_bar.dart';
import 'package:food_delivery/presentation/widget/custom_button.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  bool isTap = false;

  String productName = "Aromatic long grain Thai Jasmine Rice releases a sweet and enticing aroma while cooking. Once cooked, it is soft, white," 
                       "and fluffy, ideal for enhancing the overall taste of any recipe, allowing for a heightened experience at every occasion.This" "variety of rice is not" "only Gluten Free but also Non-GMO Project Verified, suitable for vegan and vegetarian diets as well" "as free of MSG and other added preservatives.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarheight: 47,
        isBackBtnVisible: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 
              Container(
              height: 288.h,
              width: 288.w,
              margin: EdgeInsets.symmetric(horizontal: 17.5.w,vertical: 14.h),
              child: Image.asset(ImageConstant.mahatmaImg,
              fit: BoxFit.fitHeight,
              ) 
              ),
              SizedBox(height: 4.h,),
          
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 8.w),
               child: Row(
                children: List.generate(4, (index) {
                  return Flexible(
                    child: Container(
                      height: 4.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: AppColors.blackGrey3
                      ),
                    ),
                  );
                }),
               ),
             ),
          
            SizedBox(height: 24.h,),
          
            Row(
              children: [
          
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: AppColors.green6
                  ),
                  child: Text(
                    "Household chemicals",
                    style: AppStyle.nunito12darkw700h1_4,
          
                  ),
                ),
          
               SizedBox(width: 8.h,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: AppColors.green6
                  ),
                  child: Text(
                    "For kitchen",
                    style: AppStyle.nunito12darkw700h1_4,
          
                  ),
                ),
          
              ],
            ),
          
            SizedBox(height: 8.h,),
          
            Text("Mahatma Jasmine White Rice, Thai Fragrant Long Grain Rice, 2 lb Bag",
            style: AppStyle.nunito20darkw700h1_4
            ),
          
            SizedBox(height: 8.h,),
          
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
          
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColors.green7
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your price",
                          style: AppStyle.nunito14blackGrey3w700h1_4,
                        
                        ),
                        Text(
                          "\$3.42",
                          style: AppStyle.nunito20darkw700h1_4,
                        ),
                      ],
                    ),
                  ),
                ),
          
               SizedBox(width: 8.h,),
               Expanded(
                 child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.green2),
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColors.green7
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Subscription",
                          style: AppStyle.nunito14green2w400h1_4,
                        
                        ),
                        Text(
                          "\$2.42",
                          style: AppStyle.nunito20green2w700h1_4,
                        ),
                      ],
                    ),
                  ),
               ),
          
              ],
            ),
            SizedBox(height: 26.h,),
          
            Text(productName,style: AppStyle.nunito14darkw500h1_4,
            softWrap: true,
            // textAlign: TextAlign.left,
            // maxLines: 5,
            ),

            SizedBox(height: 10.h,),

            const Divider(
              color: AppColors.green5,
            ),

            SizedBox(height: 8.h,),

            Text("Available Sizes",style: AppStyle.nunito14blackGrey3w700h1_4,
            softWrap: true,
            ),
            
            SizedBox(height: 4.h,),
            Text("32oz (907g), 80oz (2268g), 160oz (4536g)",style: AppStyle.nunito14darkw500h1_4,
            softWrap: true,
            ),

            SizedBox(height: 12.h,),
            Text("Cooking time",style: AppStyle.nunito14blackGrey3w700h1_4,
            softWrap: true,
            ),
            
            SizedBox(height: 4.h,),
            Text("Vendor code",style: AppStyle.nunito14darkw500h1_4,
            softWrap: true,
            ),


            SizedBox(height: 12.h,),
            Text("Cooking time",style: AppStyle.nunito14blackGrey3w700h1_4,
            softWrap: true,
            ),
            
            SizedBox(height: 4.h,),
            Text("55648АР4",style: AppStyle.nunito14darkw500h1_4,
            softWrap: true,
            ),


            SizedBox(height: 29.h,),

            Visibility(
              visible: isTap,
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.white
                ),
                child: CustomQuantityButton(
                  height: 54.h,
                  width: 343.w,
                  radius: 16.r,
                  buttonColor: AppColors.green6,
                  onMinusTap: (){
                    setState(() {
                      isTap = false;
                    });
                  },
                ),
              ),
            ),
              
              Visibility
              (
                visible: !isTap,
                child: CustomElevatedButton(
                  height: 54.h,
                  width: 343.w,
                  buttonText: "Add to cart", 
                  radius: 16.r,
                  buttonColor: AppColors.green1,
                  onTap: (){
                       setState(() {
                         isTap = true;
                       });
                    }
                  ),
              ),
            
                  
            ],
          ),
        ),
      ),
    
    );
  }
}