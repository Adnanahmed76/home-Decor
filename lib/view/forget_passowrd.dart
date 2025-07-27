import 'package:flutter/material.dart';
import 'package:homedecor/res/component/appcolor.dart';
import 'package:homedecor/res/component/custom_button.dart';
import 'package:homedecor/res/component/custometextfilled.dart';
import 'package:homedecor/view/reset_password.dart';

class ForgetPassowrd extends StatefulWidget {
  const ForgetPassowrd({super.key});

  @override
  State<ForgetPassowrd> createState() => _ForgetPassowrdState();
}

class _ForgetPassowrdState extends State<ForgetPassowrd> {
  final emailController=TextEditingController();
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
        title: Text("Forget Password",style: TextStyle(color: PinkAccent),),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
            color: DarkbackgroundColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Text("Reset Password?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
                const  SizedBox(height: 15,),
                        const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",style: TextStyle(color: Colors.white),) ,

                ],
              ),
            ),
          ),
          Expanded(child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF5EDE6),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(30)
              )
            ),
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
  CustomeTextfilled(label: "Enter Your Email Address",labelColor: Colors.black, hint: "example@example.com", controller: emailController),
  SizedBox(height: 20,),
  CustomButton(label: "Send", onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));
  }, backgroundColor: PinkAccent)
              ],
            ),
          ))
        ],
        
      ),
    );
  }
}