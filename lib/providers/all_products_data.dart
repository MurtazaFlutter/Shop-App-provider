import 'package:flutter/material.dart';
import '../models/all_products_model.dart';

class AllProductsProvider with ChangeNotifier {
  final List<HomeAllProducts> _allProducts = [
    HomeAllProducts(
      color: const Color(0xffF3D9E8),
      image: "lib/assets/images/image1.png",
      productTitle: "Imac 27 inch 5k",
      storeTitle: "Applestore",
      priceOne: "\$999.99",
      priceTwo: "\$1322",
    ),
    HomeAllProducts(
      color: const Color(0xffDEDDFF),
      image: "lib/assets/images/image2.png",
      productTitle: "Samsung z flip",
      storeTitle: "Samsung store",
      priceOne: "\$711.99",
      priceTwo: "\$9,922.99",
    ),
    HomeAllProducts(
      color: const Color(0xffBDE8E3),
      image: "lib/assets/images/image3.png",
      productTitle: "Flanell Uniqlo",
      storeTitle: "Unialo Store",
      priceOne: "\$86.00",
      priceTwo: "\$122.00",
    ),
    HomeAllProducts(
      color: const Color(0xffFFE5D7),
      image: "lib/assets/images/image4.png",
      productTitle: "Eyeglasses Gucci",
      storeTitle: "Gucci",
      priceOne: "\$211.00",
      priceTwo: "\$4,444.99",
    ),
    HomeAllProducts(
      color: const Color(0xffFFE5D7),
      image: "lib/assets/images/image4.png",
      productTitle: "Eyeglasses Gucci",
      storeTitle: "Gucci",
      priceOne: "\$211.00",
      priceTwo: "\$4,444.99",
    ),
    HomeAllProducts(
      color: const Color(0xffFFE5D7),
      image: "lib/assets/images/image4.png",
      productTitle: "Eyeglasses Gucci",
      storeTitle: "Gucci",
      priceOne: "\$211.00",
      priceTwo: "\$4,444.99",
    ),
  ];

  List get getAllProducts => _allProducts;
}
