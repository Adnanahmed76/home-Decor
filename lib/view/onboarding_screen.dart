import 'package:flutter/material.dart';
import 'package:homedecor/models/onboarding.dart';

import 'package:homedecor/res/component/appcolor.dart';
import 'package:homedecor/view/intro.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final onboardingData=[
    OnBoardingModel(image: 'images/onboardingone.png', title: "Confortable Space", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
    OnBoardingModel(image: 'images/onboardingb.png', title: "Modern Design", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
    OnBoardingModel(image: 'images/onboardingc.png', title: "Styled Living", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
    OnBoardingModel(image: 'images/onboardingd.png', title: "Relaxing Furniture", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
  ];
  final PageController _contoller=PageController();
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        final shouldPop=await showDialog(context: context, builder: (context)=>AlertDialog(
          title:const Text("Exit App"),
          content:const Text("Do you really want to exit"),
          actions: [
            TextButton(onPressed: (){
Navigator.of(context).pop(false);
            }, child: Text("No")),
            TextButton(onPressed: (){
Navigator.of(context).pop(true);
            }, child: Text("Yes"))
          ],
        )); return shouldPop ?? false;
      },
      child: Scaffold(
        backgroundColor: Color(0xFF1E1C1C
        ),
        body: SafeArea(child: Stack(children: [
          PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: onboardingData.length,
            controller: _contoller,
      onPageChanged: (index){
        setState(() =>currentIndex=index);
      },
            itemBuilder: (context,index){
              final item=onboardingData[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //top Image
                  Expanded(child: Image.asset(item.image,fit: BoxFit.cover,)),
      Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
      color: Color(0xFF1E1C1C),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40)
      )
        ),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(item.title,style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: PinkAccent
      ),),
      SizedBox(height: 10,),
      Text(item.description,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      SmoothPageIndicator(controller: _contoller, count: onboardingData.length,
      effect: WormEffect(
        dotColor: Colors.grey,
        activeDotColor: Color(0xFFEEB7A5)
      ),
      
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFFEEB7A5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      )
        ),
        onPressed: (){
      if(currentIndex==onboardingData.length-1){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>IntroScreen()));
      }else{
        _contoller.nextPage(duration: Duration(microseconds: 500), curve: Curves.ease);
      }
        }, child: Text(currentIndex ==onboardingData.length-1? "Get Started": "Next"))
        ],
      )
      ],
        ),
      )
      
                ],
              );
            }),
            Positioned(
              top: 10,
              right: 20,
      
              child: TextButton(onPressed: (){
      
              }, child:const Text("Skip ->",style: TextStyle(color: Colors.black),)) )
        ],)
        ),
      ),
    );
  }
}