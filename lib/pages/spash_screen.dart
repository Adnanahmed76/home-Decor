import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homedecor/pages/intro.dart';
import 'package:homedecor/pages/onboarding_screen.dart';
import 'package:homedecor/utilis/color.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();

    //delay for 3 seconds
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("images/Vector.png")),
            SizedBox(height:5,),
            Text("Home",style: GoogleFonts.poppins(fontSize: 55,color: Colors.white,fontWeight: FontWeight.w600)),
            Text("DECOR",style: TextStyle(fontSize: 45,color: Colors.white,)),
        
          ],
        ),
      ),
      );
    
  }
}