import 'package:flutter/material.dart';
import 'package:homedecor/models/product.dart';
import 'package:homedecor/res/component/productcard.dart';


class HorizontalProductList extends StatelessWidget {
  final List<Product> products;

  const HorizontalProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
       // adjust as per content
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}
