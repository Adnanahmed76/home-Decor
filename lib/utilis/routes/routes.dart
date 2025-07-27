import 'package:flutter/material.dart';
import 'package:homedecor/utilis/routes/routes_name.dart';
import 'package:homedecor/view/forget_passowrd.dart';
import 'package:homedecor/view/home_page.dart';
import 'package:homedecor/view/intro.dart';
import 'package:homedecor/view/login_screen.dart';
import 'package:homedecor/view/onboarding_screen.dart';
import 'package:homedecor/view/signup_screen.dart';
import 'package:homedecor/view/spash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings setting){
switch(setting.name){
  case RoutesName.splash:
 return MaterialPageRoute(builder: (BuildContext context)=>SplashScreen());
 case RoutesName.onboarding:
 return MaterialPageRoute(builder: (BuildContext content)=>OnboardingScreen());
 case RoutesName.introscreen:
 return MaterialPageRoute(builder: (BuildContext context)=>IntroScreen());
 case RoutesName.login:
 return MaterialPageRoute(builder: (BuildContext context)=>LoginScreen());
 case RoutesName.signup:
 return MaterialPageRoute(builder: (BuildContext context)=>SignupScreen());
 case RoutesName.forgetPassword:
 return MaterialPageRoute(builder: (BuildContext context)=>ForgetPassowrd());
 case RoutesName.home:
 return MaterialPageRoute(builder: (BuildContext context)=>HomePage());
 default:
 return MaterialPageRoute(builder: (_){
  return Scaffold(
    body: Center(
      child: Text("No Route Define"),
    ),
  );
 });
}
  }
}