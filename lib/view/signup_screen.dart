import 'package:flutter/material.dart';
import 'package:homedecor/res/component/appcolor.dart';
import 'package:homedecor/res/component/custom_button.dart';
import 'package:homedecor/res/component/custometextfilled.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final fullnameController=TextEditingController();
  final emailController=TextEditingController();
  final mobilenumberController=TextEditingController();
  final DateofbirtController=TextEditingController();
  final PasswordController=TextEditingController();
  final confromPasswordController=TextEditingController();

  @override
  void dispose() {
    fullnameController.dispose();
    emailController.dispose();
    mobilenumberController.dispose();
    DateofbirtController.dispose();
    PasswordController.dispose();
    confromPasswordController.dispose();
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
        title: Text("Create Account",style: TextStyle(color: PinkAccent),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
          child: Column(
            children: [
              CustomeTextfilled(label: "Email", hint: "Enter Email ", controller: emailController),
              SizedBox(height: 10,),
              CustomeTextfilled(label: "Mobile Number", hint: "Enter Mobile number", controller: mobilenumberController),
              SizedBox(height: 10,),
              CustomeTextfilled(label: "Date of Birth", hint: "Date of Birht", controller: DateofbirtController),
              SizedBox(height: 10,),
              CustomeTextfilled(label: "Password", hint: "password", controller: PasswordController),
              SizedBox(height: 10,),
              CustomeTextfilled(label: "Confrom Password", hint: "Confrom password", controller: confromPasswordController),
              SizedBox(height: 20,),
              Center(child: Column(
                children: [
        
                  Text("By continuing. you agree to ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Terms of Use ",style: TextStyle(color: PinkAccent,fontWeight: FontWeight.bold,fontSize: 18),),
                       Text("And ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                       Text("Privacy Policy",style: TextStyle(fontSize: 18, color: PinkAccent,fontWeight: FontWeight.bold),)
                    ],
                  ),
        
                ],
              )),
              SizedBox(height: 15,),
              CustomButton(label: "Sign Up", onPressed: (){
        
              }, backgroundColor: PinkAccent),
              SizedBox(height: 20,),
              Text("Or Signup With",style: TextStyle(color: Colors.white,fontSize: 18)),
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
                  Text("Already have an Account ? ",style: TextStyle(fontSize: 15, color: Colors.white),),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Text("Login",style: TextStyle(color: PinkAccent),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}