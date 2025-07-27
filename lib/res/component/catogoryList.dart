// import 'package:flutter/material.dart';
// import 'package:homedecor/models/catogory_model.dart';
// import 'package:homedecor/models/home_controller.dart';
// import 'package:homedecor/res/component/appcolor.dart';

// import 'package:homedecor/view_model/home_view_model.dart';

// import 'package:provider/provider.dart';
// class Catogorylist extends StatefulWidget {
//   const Catogorylist({super.key});

//   @override
//   State<Catogorylist> createState() => _CatogorylistState();
// }

// class _CatogorylistState extends State<Catogorylist> {
//   final controller=HomeController();
//   int selectedIndex=-1;
//   @override
//   Widget build(BuildContext context) {

    
//     final categoryVm=Provider.of<HomeViewModel>(context);
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: List.generate(categoryVm.categories.length, (index){
//           CatogoryModel item=categoryVm.categories[index];
//           bool isSelected=selectedIndex==index;
//           return GestureDetector(
//             onTap: (){
//            categoryVm.selectCategory(index);
//             },
//             child: Padding(padding: EdgeInsets.only(right: 10),
//             child: Container(
//               height: 100,
//               width: 100,
//               decoration: BoxDecoration(
//                 color: isSelected?PinkAccent:Colors.grey,
//                 borderRadius: BorderRadius.circular(40)
//               ),
//               child: Image.asset(item.imagePath,
//               height: 50,
//               width: 70,
//               color: Colors.grey,
//               ),
//             ),
//             ),
//           );
//         })
//       ),
//     );
//   }
// }