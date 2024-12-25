import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
   }
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
    toolbarHeight: appBarheight ,
    leading: isBackBtnVisible ?
              InkWell(
                onTap: onBackBtn,
                child: const Icon(Icons.arrow_back)

              )
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