import 'package:flutter/material.dart';
import 'package:homedecor/res/component/appcolor.dart';

class BestSelerCard extends StatelessWidget {
  const BestSelerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      height: 160,
      decoration: BoxDecoration(
        color: PinkAccent,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child:Container(
              width: MediaQuery.of(context).size.width*0.55,
              decoration:const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
          )
              ),
            )),
            Padding(padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  flex: 2,


                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Kitchen Cart",style: TextStyle(fontSize: 22,color: Colors.black87,fontWeight: FontWeight.w400),),
SizedBox(height: 6,),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
                      SizedBox(height: 10,),
                      Row(
                        
                        children: [
                          Container(
                            height: 30,
                            width: 80,
                           
                            decoration: BoxDecoration(
                               color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star,color: Colors.yellow,),
                                Text("4.5",style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(width: 20,),
                                
                            
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
           
                                  height: 30,
                                  width: 100,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(20),

                                 ),
                                 child: Center(child: Text("Shop Now",style: TextStyle(fontSize: 15, color: Colors.black),)),
                                )
                        ],
                      )
                    ],
                  ),
                  )),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.center,
                      child: Image(image: AssetImage("images/jandrao.png")),
                    ))
              ],
            ),
            )
        ],
      ),
    );
  }
}