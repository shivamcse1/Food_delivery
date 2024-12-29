import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title ;
  final VoidCallback? onBackBtn;
  final List<Widget>? actions ;
  final TextStyle? titleStyle ;
  final double? appBarheight;
  final Color? appBarColor;
  final bool isTitleCentered;
  final bool isBackBtnVisible;
  final Widget? leading;
  final Widget? titleWidget;
  final EdgeInsetsGeometry? leadingPadding;


  const CustomAppBar(
    {
    super.key, 
    this.title = '', 
    this.actions, 
    this.titleStyle, 
    this.appBarheight, 
    this.appBarColor, 
    this.isTitleCentered = false, 
    this.onBackBtn, 
    this.leading, 
    this.titleWidget, 
    this.isBackBtnVisible = false, 
    this.leadingPadding,
   }
  );

  @override
  Widget build(BuildContext context) { 
    return AppBar(
    toolbarHeight: appBarheight ,
    leading: isBackBtnVisible ?
              InkWell(
                onTap: onBackBtn,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                  margin: leadingPadding ?? EdgeInsets.zero, 
                  padding: EdgeInsets.zero, 
                  height: 30.3.h, 
                  width: 30.3.h, 
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.green6,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: AppColors.green2,
                    size: 16.0, // Icon size fits the container
                  ),
                  )
                ))
                
           :leading,  
    centerTitle: isTitleCentered,
    title: titleWidget ??
           Text(title,style: titleStyle,),
    backgroundColor: appBarColor,
    actions: actions
    );
  }
  
  @override
  Size get preferredSize => Size(
      double.maxFinite, 
      appBarheight?? 40.h
      ) ;
}