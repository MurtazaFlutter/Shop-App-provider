import 'package:flutter/material.dart';

class HomeAllProducts {
  final Color color;
  final String image;
  final String productTitle;
  final String storeTitle;
  final String priceOne;
  final String priceTwo;

  HomeAllProducts({
    required this.color,
    required this.image,
    required this.productTitle,
    required this.storeTitle,
    required this.priceOne,
    required this.priceTwo,
  });
}

List<HomeAllProducts> allproducts = [
  HomeAllProducts(
    color: const Color(0xffF3D9E8),
    image: "lib/assets/images/image5.png",
    productTitle: "Smart Watch T80",
    storeTitle: "Applestore",
    priceOne: "\$268.20",
    priceTwo: "\$1322.99",
  ),
  HomeAllProducts(
    color: const Color(0xffDEDDFF),
    image: "lib/assets/images/image6.png",
    productTitle: "Sport Shoes Nike",
    storeTitle: "Samsung store",
    priceOne: "\$711.99",
    priceTwo: "\$9,922.99",
  ),
  HomeAllProducts(
    color: const Color(0xffFFE3E3),
    image: "lib/assets/images/image7.png",
    productTitle: "Red Dress",
    storeTitle: "Uniqlo Store",
    priceOne: "\$86.00",
    priceTwo: "\$122.00",
  ),
  HomeAllProducts(
    color: const Color(0xffCFEEFA),
    image: "lib/assets/images/image8.png",
    productTitle: "MacBook Pro",
    storeTitle: "Applestore",
    priceOne: "\$1500.00",
    priceTwo: "\$4,444.99",
  ),
  HomeAllProducts(
    color: const Color(0xffD2E7DB),
    image: "lib/assets/images/image9.png",
    productTitle: "Fresh",
    storeTitle: "Uniqlo Store",
    priceOne: "\$1.00",
    priceTwo: "\$4.99",
  ),
  HomeAllProducts(
    color: const Color(0xffFFE5D7),
    image: "lib/assets/images/image1.png",
    productTitle: "Imac 27 inch 5k",
    storeTitle: "Applestore",
    priceOne: "\$999.99",
    priceTwo: "\$41,322.99",
  ),
];
