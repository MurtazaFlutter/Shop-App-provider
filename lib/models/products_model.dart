import 'package:flutter/material.dart';

class HomeProducts {
  int id;
  String image;
  String productTitle;
  String storeTitle;
  Color color;
  double priceOne;
  String priceTwo;
  int quantity;

  HomeProducts({
    required this.id,
    required this.image,
    required this.productTitle,
    required this.storeTitle,
    required this.color,
    required this.priceOne,
    required this.priceTwo,
    this.quantity = 1,
  });

  // Method to update the quantity and calculate total price
  void updateQuantity(int newQuantity) {
    if (newQuantity >= 1) {
      quantity = newQuantity;
    }
  }

  double get total {
    return quantity * priceOne;
  }
}


//List<HomeProducts> products = [
//   HomeProducts(
//     color: const Color(0xffF3D9E8),
//     image: "lib/assets/images/image1.png",
//     productTitle: "Imac 27 inch 5k",
//     storeTitle: "Applestore",
//     priceOne: "\$999.99",
//     priceTwo: "\$1322",
//   ),
//   HomeProducts(
//     color: const Color(0xffDEDDFF),
//     image: "lib/assets/images/image2.png",
//     productTitle: "Samsung z flip",
//     storeTitle: "Samsung store",
//     priceOne: "\$711.99",
//     priceTwo: "\$9,922.99",
//   ),
//   HomeProducts(
//     color: const Color(0xffBDE8E3),
//     image: "lib/assets/images/image3.png",
//     productTitle: "Flanell Uniqlo",
//     storeTitle: "Unialo Store",
//     priceOne: "\$86.00",
//     priceTwo: "\$122.00",
//   ),
//   HomeProducts(
//     color: const Color(0xffFFE5D7),
//     image: "lib/assets/images/image4.png",
//     productTitle: "Eyeglasses Gucci",
//     storeTitle: "Gucci",
//     priceOne: "\$211.00",
//     priceTwo: "\$4,444.99",
//   ),
// ];
