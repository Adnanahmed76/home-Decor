import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homedecor/res/component/appcolor.dart';
import 'package:homedecor/res/component/custom_button.dart';
import 'package:homedecor/view/login_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkbackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("images/Vector.png")),
              SizedBox(height:5,),
              Text("Home",style: GoogleFonts.poppins(fontSize: 55,color: Colors.white,fontWeight: FontWeight.w600)),
              Text("DECOR",style: TextStyle(fontSize: 45,color: Colors.white,)),
              Text("Lorem ipsum dolor sit amet, consectetur\n        adipiscing elit, sed do eiusmod. ",style: TextStyle(color: Colors.white),),
SizedBox(height: 25,),
              CustomButton(label: "Login", onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              }, backgroundColor: PinkAccent),
              SizedBox(height: 10,),
              CustomButton(label: "Sign Up", onPressed: (){
              
              }, backgroundColor: PinkAccent)
            ],
          ),
        ),
      ),
      );
    
  }
}