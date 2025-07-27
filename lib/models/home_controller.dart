import 'package:homedecor/models/catogory_model.dart';

class HomeController {
  List<CatogoryModel> getCategories(){
    return [
      CatogoryModel(
        imagePath: "images/chair.png",
        
        ),
        CatogoryModel(imagePath: "images/sofa.png"),
        CatogoryModel(imagePath: "images/chairdouble.png"),
        CatogoryModel(imagePath: "images/light.png"),
        CatogoryModel(imagePath: "images/chairdouble.png")
    ];
  }
}