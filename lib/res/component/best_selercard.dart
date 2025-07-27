import 'package:flutter/material.dart';
import 'package:homedecor/res/component/appcolor.dart';

class BestSelercard extends StatelessWidget {
  const BestSelercard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                child: Container(
                  width: MediaQuery.of(context).size.width*0.55,
                  decoration: const BoxDecoration(
                   
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                    )                  ),
                )),
                Padding(padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kitchen Cart",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w400),),
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
SizedBox(height: 15,),
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 60,
                                  
                                  decoration: BoxDecoration(
color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text("4.5",style: TextStyle(fontSize: 18,color:  Colors.black,fontWeight: FontWeight.w300),)
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20,),
                                //shop now button
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Text("Shop Now"),
                                )
                              ],
                            ),
                            
  
                          ],
                        ),
                        
                        
                      ),
                      
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset("images/jandrao.png",fit: BoxFit.contain,)))
                  ],
                ),
                )
            ],
          ),
         );
  }
  
}