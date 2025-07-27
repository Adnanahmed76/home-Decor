class Product {

  final String imageUrl;
  final String name;
  final String description;
  final double price;
  bool isFavourite;
  Product({required this.imageUrl,required this.description,required this.name,required this.price,this.isFavourite=false});

}