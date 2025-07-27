import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homedecor/res/component/appcolor.dart';
import 'package:homedecor/res/component/custom_button.dart';
import 'package:homedecor/view/login_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
    final screenheight=MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: DarkbackgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenheight*0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Image(image: AssetImage("images/Vector.png")),
             const SizedBox(height:0.1,),
              Text("Home",style: GoogleFonts.poppins(fontSize: screenwidth*0.1,color: Colors.white,fontWeight: FontWeight.w600)),
              Text("DECOR",style: TextStyle(fontSize: screenheight*0.060,color: Colors.white,)),
              Text("Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod. "
              
              ,style: TextStyle(color: Colors.white,
              
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              ),
const SizedBox(height: 25,),
             CustomButton(label: "Login", onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              }, backgroundColor: PinkAccent),
             const SizedBox(height: 10,),
              CustomButton(label: "Sign Up", onPressed: (){
              
              }, backgroundColor: PinkAccent)
            ],
          ),
        ),
      ),
      );
    
  }
}