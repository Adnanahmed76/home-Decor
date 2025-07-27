import 'package:flutter/material.dart';
import 'package:homedecor/res/component/appcolor.dart';
import 'package:homedecor/res/component/custom_button.dart';
import 'package:homedecor/res/component/custometextfilled.dart';


class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final passwordController=TextEditingController();
  final confrompasswordController=TextEditingController();
  bool _obscurePassword = true;
bool _obscureConfirmPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkbackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.transparent,
        title: Text("Set Password",style: TextStyle(color: PinkAccent),),
        centerTitle: true,
      ),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 30),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 30,),
      Text("Change The Password",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
      SizedBox(height: 10,),
      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",style: TextStyle(color: Colors.white,),),
SizedBox(height: 50,),
      CustomeTextfilled(label: "Password", hint: "* * * * * * *", controller: passwordController,obscureText: _obscurePassword,isPassword: true, toggleVisibilty: (){
        setState(() {
          _obscurePassword=!_obscurePassword;
        });
      },),
      SizedBox(height: 15,),
      CustomeTextfilled(label: "Confrom Password", hint: "* * * * * * ", controller: confrompasswordController,obscureText: true,isPassword: true,toggleVisibilty: (){
        _obscureConfirmPassword=!_obscureConfirmPassword;
      },),
      SizedBox(height: 60,),
      CustomButton(label: "Reset Password", onPressed: (){

      }, backgroundColor: PinkAccent)
    ],
  ),
),
    );
  }
}