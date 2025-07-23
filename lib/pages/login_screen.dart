import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:homedecor/pages/forget_passowrd.dart';
import 'package:homedecor/pages/signup_screen.dart';
import 'package:homedecor/utilis/color.dart';
import 'package:homedecor/utilis/custome_textfilled.dart';
import 'package:homedecor/widgets/custom_button.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  bool obscurePassword=true;
  @override
  void dispose() {
   emailController.dispose();
   passwordController.dispose();
    super.dispose();

  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkbackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        centerTitle: true,
          backgroundColor: Colors.transparent,
        title: Text("Login",style: TextStyle(color: PinkAccent),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Text("Welcome ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
        Text("Please enter your details to procesced",style: TextStyle(color: Colors.white),),
        SizedBox(height: 50,),
        CustomeTextfilled(label: "Username Or Email", hint: "Example@gmail.com", controller: emailController),
        SizedBox(height: 20,
        ),
        CustomeTextfilled(label: "Password", hint: "* * * * * ", toggleVisibilty: (){
          setState(() {
          obscurePassword=!obscurePassword;
          });
        }, controller: passwordController),
        SizedBox(height: 20,),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 60.0),
  child: CustomButton(label: "Login", onPressed: (){
  
  }, backgroundColor: PinkAccent),
),
SizedBox(height: 10,),
Center(child: GestureDetector(
  onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassowrd()));
  },
  child: Text("Forget Password?",style: TextStyle(color: Colors.white),))),

SizedBox(height: 200,),
Center(child: Text("Or Sign up with",style: TextStyle(color: Colors.white),)),
SizedBox(height: 10,),
Row(
mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image(image: AssetImage("images/google.png")),
SizedBox(width: 10,),
    Image(image: AssetImage("images/facebook.png"))
  ],

),
SizedBox(height: 10,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Don't have an Account? ",style: TextStyle(color: Colors.white),),
    SizedBox(width: 2,),
    GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
      },
      child: Text("Sign Up",style: TextStyle(color: PinkAccent),))
  ],
)
            ],
        ),
      ),
    );
  }
}