import 'package:food_delivery/presentation/view/auth/create_password/create_password_screen.dart';
import 'package:food_delivery/presentation/view/auth/otp/otp_screen.dart';
import 'package:food_delivery/presentation/view/auth/signup/personal_data_screen.dart';
import 'package:food_delivery/presentation/view/auth/signup/signup_screen.dart';
import 'package:food_delivery/presentation/view/auth/succes_registration/success_registration_screen.dart';
import 'package:food_delivery/presentation/view/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:get/get.dart';

class AppRoutes{

 static const String bottomNavBarScreen = '/';
 static const String otpScreen = '/otpScreen';
 static const String createPasswordScreen = '/createPasswordScreen';
 static const String signUpScreen = '/signUpScreen';
 static const String personalDataScreen = '/personalDataScreen';
 static const String successRegistrationScreen = '/successRegistrationScreen';
  

 
 static List<GetPage<dynamic>>? allPages = [
 
  GetPage(
      name: '/', 
      page: ()=> const BottomNavBarScreen() 
    ),

  GetPage(
    name: otpScreen, 
    page: ()=> const OtpScreen()
    ),  

  GetPage(
    name: createPasswordScreen, 
    page: ()=> const CreatePasswordScreen()
    ),  

  GetPage(
    name: successRegistrationScreen, 
    page: ()=> const SuccessRegistrationScreen()
    ), 

  GetPage(
    name: signUpScreen, 
    page: ()=> const SignUpScreen()
    ),  

  GetPage(
    name: personalDataScreen, 
    page: ()=> const PersonalDataScreen()
    ),  

 ];

}