import 'package:flutter/material.dart';
import 'package:homedecor/models/product.dart';
import 'package:homedecor/res/component/categorieslist.dart';

class HomeViewModel with ChangeNotifier{
  final List<String> imagesPaths=[
    'images/chair.png',
    'images/sofa.png',
    'images/chairdouble.png',
    'images/light.png'
  ];
  int selectedCategoryIndex=0;

  

  void setSelectedIndex(int index){
    selectedCategoryIndex=index;
    notifyListeners();
  }

  int get selectedCategory=>selectedCategoryIndex;
  final List<Product> products=[
    Product(
      
     
       imageUrl: "images/alumunimchair.png",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", 
        name: "Alumium chair", 
        price: 120.00),
        Product(imageUrl: 'images/stylishchair.png', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
         name: "Stylish char", price: 120.00)
  ];
}