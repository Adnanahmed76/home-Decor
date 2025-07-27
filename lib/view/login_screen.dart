import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:homedecor/res/component/appcolor.dart';
import 'package:homedecor/res/component/custom_button.dart';
import 'package:homedecor/res/component/custometextfilled.dart';
import 'package:homedecor/utilis/routes/routes_name.dart';
import 'package:homedecor/utilis/utils.dart';
import 'package:homedecor/view/forget_passowrd.dart';
import 'package:homedecor/view/home_page.dart';
import 'package:homedecor/view/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  FocusNode emailNode=FocusNode();
  FocusNode passwordNode=FocusNode();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:  30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        const  Text("Welcome ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
        const  Text("Please enter your details to procesced",style: TextStyle(color: Colors.white),),
          SizedBox(height: 50,),
          CustomeTextfilled(label: "Username Or Email", hint: "Example@gmail.com", controller: emailController,focusNode: emailNode,nextFocus: passwordNode,),
         const SizedBox(height: 20,
          ),
          CustomeTextfilled(label: "Password", hint: "* * * * * ", focusNode: passwordNode, toggleVisibilty: (){
            setState(() {
            obscurePassword=!obscurePassword;
            });
          }, controller: passwordController),
          SizedBox(height: 20,),
        
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: CustomButton(label: "Login", onPressed: (){
            if(emailController.text.isEmpty){
        Utils.toastMessage("Enter Email please", context);
        
            }else if(passwordController.text.isEmpty){
        Utils.toastMessage("Enter Password Please", context);
        
            }else if(passwordController.text.length<6){
              Utils.toastMessage("Please enter atleast 6 digit password", context);
       
            }else{
               Navigator.pushNamed(context, RoutesName.home);
            }
          
          }, backgroundColor: PinkAccent),
        ),
        const SizedBox(height: 10,),
        Center(child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassowrd()));
          },
          child: const Text("Forget Password?",style: TextStyle(color: Colors.white),))),
        
        const SizedBox(height: 200,),
        Center(child: Text("Or Sign up with",style: TextStyle(color: Colors.white),)),
        const SizedBox(height: 10,),
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Image(image: AssetImage("images/google.png")),
        const SizedBox(width: 10,),
           const Image(image: AssetImage("images/facebook.png"))
          ],
        
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const  Text("Don't have an Account? ",style: TextStyle(color: Colors.white),),
           const SizedBox(width: 2,),
            GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
        },
        child:Text("Sign Up",style: TextStyle(color: PinkAccent),))
          ],
        )
              ],
          ),
        ),
      ),
    );
  }
}