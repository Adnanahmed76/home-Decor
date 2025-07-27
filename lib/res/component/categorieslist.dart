import 'package:flutter/material.dart';
import 'package:homedecor/res/component/appcolor.dart';
import 'package:homedecor/view_model/home_view_model.dart';

import 'package:provider/provider.dart';
class Categorieslist extends StatelessWidget {
  const Categorieslist({super.key});

  @override
  Widget build(BuildContext context) {
    final homeVm=Provider.of<HomeViewModel>(context);
    return SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: List.generate(homeVm.imagesPaths.length, (index){
    bool isSelected=homeVm.selectedCategory==index;
      return GestureDetector(
        onTap: (){
   homeVm.setSelectedIndex(index);
        },
      child: Padding(padding: EdgeInsetsGeometry.only(right: 5),
    child: Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: isSelected ? PinkAccent : Colors.black12,
         borderRadius: BorderRadius.circular(20),
      ),
            child: Image.asset(
                    homeVm.imagesPaths[index],
                    height: 50,
                    width: 70,
                    color: Colors.grey,

                  ),
                )
     
    ),
    
    
    );
    }
    
    
  ),
)
);
  }
}