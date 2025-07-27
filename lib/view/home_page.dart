import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homedecor/res/component/appcolor.dart';
import 'package:homedecor/res/component/best_seler.dart';
import 'package:homedecor/res/component/categorieslist.dart';
import 'package:homedecor/res/component/collection.dart';
import 'package:homedecor/view_model/home_view_model.dart';



import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     final homeVm=Provider.of<HomeViewModel>(context);
    return WillPopScope(
      onWillPop: ()async{
      bool shouldExit=await _showExitDiload(context);
      return shouldExit;
      },
      child: Scaffold(
       backgroundColor: DarkbackgroundColor,
       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 20),
           child: Column(
         
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             _buildHeader(),
            const SizedBox(height: 20,),
           const  Image(image: AssetImage("images/adds.png")),
            const SizedBox(height: 10,),
             _biuldSlider(),
          
          const SizedBox(height: 10,),
             Text("Categories",style: TextStyle(color: PinkAccent,fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(height: 10,),
             Categorieslist(),
             SizedBox(height: 15,),
             Text("Best Seller",style: TextStyle(color: PinkAccent,fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(height: 20,),
             BestSelerCard(),
             SizedBox(height: 20,),
             Text("Now Collection",style: TextStyle(color: PinkAccent,fontSize: 20,fontWeight: FontWeight.bold),),
             
         HorizontalProductList(products: homeVm.products)
            ],
           ),
           
           ),
       ),
       bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
        backgroundColor: DarkbackgroundColor,
        selectedItemColor: PinkAccent,
        unselectedItemColor: Colors.white,
        items: const[
      BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.list),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.message),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.person,),label: "")
       ]),
              
       ),
    );
    
  }

  Widget _buildHeader(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
const Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   const Text("Hi Welcome Back",style: TextStyle(
      fontSize: 20,color: Colors.pinkAccent,

    ),),
   const Text("Create spaces that bring joy",style: TextStyle(
      fontSize: 15,color: Colors.white
    ),),
    
  ],

),
Container(
  height: 40,
  width: 40,
  decoration: BoxDecoration(
    color: PinkAccent,
    borderRadius: BorderRadius.circular(30)
  ),
  child: const Icon(Icons.search),
)
      ],
    );
  }

  Widget _biuldSlider(){
return  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index){

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 5,
                width: 30,
                color: index==0 ? PinkAccent:Colors.white,
                
              ),
            );
          })


         );
  }
  Future<bool> _showExitDiload(BuildContext context)async{
return await showDialog(
  
  
  context: context, 
  builder: (context)=>AlertDialog(
    backgroundColor: Colors.grey[900],
    title: const Text("Exit App?",style: TextStyle(color: Colors.white),),
    content: const Text("Are you Sure want to go back ?",style: TextStyle(color: Colors.pinkAccent),),
    actions: [
      TextButton(onPressed: ()=>Navigator.of(context).pop(false), child: const Text("No",style: TextStyle(color: Colors.pinkAccent),)),
TextButton(onPressed: (){
if(Platform.isAndroid){
  SystemNavigator.pop();
}else if(Platform.isIOS){
  exit(0);
}
},
 child: const Text("Yes ",style: TextStyle(color: Colors.white),))
    ],
  ))??false;
  }
}