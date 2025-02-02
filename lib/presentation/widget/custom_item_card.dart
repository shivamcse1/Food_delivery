import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/theme/app_colors.dart';
import 'package:food_delivery/core/theme/app_style.dart';
import 'package:food_delivery/presentation/widget/custom_button.dart';

class CustomItemCard extends StatelessWidget {
  final String image;
  final String? itemName;
  final String? price;
  final int index;
  final String? discountPrice;
  final VoidCallback? onButtonTap;
  const CustomItemCard({
    super.key, 
    required this.image, 
     this.itemName, 
     this.price, 
     this.discountPrice, 
     this.onButtonTap, 
     this.index = 0,
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 302.h,
      width: 168.w,
      child: Column(
        children: [

          Container(
            padding: const EdgeInsets.all(23),
            height: 168.h,
            width: 168.w,
            decoration: BoxDecoration(
              color: AppColors.green6,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Image.asset(image,fit: BoxFit.contain,) ,
          ),

          SizedBox(height: 8.h,),

          SizedBox(
            height: 118.h,
            width: 152.w,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                
                    Text("\$4.98",style: AppStyle.nunito16darkw700h1_4,),
                    SizedBox(width: 4.w,),
                    Text("\$5.98",style: AppStyle.nunito12blackGrey3w700h1_4.copyWith(
                      decoration: TextDecoration.lineThrough
                    ),)
                  ],
                ),
                SizedBox(height: 4.h,),

                SizedBox(
                  height: 51.h,
                  width: 152.w,
                  child: Text("Finish Classic- 60ct - Dishwasher Detergent - Powerball - Dishwashing Tablets - Dish Tabs",
                  style: AppStyle.nunito12darkw500h1_4,
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 7.h,),

                index == 0 ? const CustomQuantityButton()
                : CustomElevatedButton(
                  isLoading: false,
                  radius: 8.r,
                  width: 152.w,
                  height: 33.h,
                  buttonColor: AppColors.green1,
                  buttonText: "Add to cart", 
                  buttonTextStyle: AppStyle.nunito12whitew700h1_4,
                  onTap:onButtonTap ?? (){},
                  ),

                  
            
              ],
            ),
          )
        ],
      ),
    );
  }
}