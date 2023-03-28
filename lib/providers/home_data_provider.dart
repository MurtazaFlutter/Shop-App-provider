import 'package:flutter/material.dart';
import 'package:shopping_app/models/products_model.dart';

class HomeProductsProvider with ChangeNotifier {
  final List<HomeProducts> _homeProducts = [
    HomeProducts(
      quantity: 1,
      id: 1,
      color: const Color(0xffF3D9E8),
      image: "lib/assets/images/image1.png",
      productTitle: "Imac 27 inch 5k",
      storeTitle: "Applestore",
      priceOne: 999.99,
      priceTwo: "\$1322",
    ),
    HomeProducts(
      quantity: 1,
      id: 2,
      color: const Color(0xffDEDDFF),
      image: "lib/assets/images/image2.png",
      productTitle: "Samsung z flip",
      storeTitle: "Samsung store",
      priceOne: 711.99,
      priceTwo: "\$9,922.99",
    ),
    HomeProducts(
      quantity: 1,
      id: 3,
      color: const Color(0xffBDE8E3),
      image: "lib/assets/images/image3.png",
      productTitle: "Flanell Uniqlo",
      storeTitle: "Unialo Store",
      priceOne: 86.00,
      priceTwo: "\$122.00",
    ),
    HomeProducts(
      quantity: 1,
      id: 3,
      color: const Color(0xffFFE5D7),
      image: "lib/assets/images/image4.png",
      productTitle: "Eyeglasses Gucci",
      storeTitle: "Gucci",
      priceOne: 211.00,
      priceTwo: "\$4,444.99",
    ),
    HomeProducts(
      quantity: 1,
      id: 4,
      color: const Color(0xffBDE8E3),
      image: "lib/assets/images/image5.png",
      productTitle: "Flanell Uniqlo",
      storeTitle: "Unialo Store",
      priceOne: 86.00,
      priceTwo: "\$122.00",
    ),
    HomeProducts(
      quantity: 1,
      id: 5,
      color: const Color(0xffFFE5D7),
      image: "lib/assets/images/image6.png",
      productTitle: "Eyeglasses Gucci",
      storeTitle: "Gucci",
      priceOne: 211.00,
      priceTwo: "\$4,444.99",
    ),
    HomeProducts(
      quantity: 1,
      id: 6,
      color: const Color(0xffF3D9E8),
      image: "lib/assets/images/image1.png",
      productTitle: "Imac 27 inch 5k",
      storeTitle: "Applestore",
      priceOne: 999.99,
      priceTwo: "\$1322",
    ),
    HomeProducts(
      quantity: 1,
      id: 7,
      color: const Color(0xffDEDDFF),
      image: "lib/assets/images/image2.png",
      productTitle: "Samsung z flip",
      storeTitle: "Samsung store",
      priceOne: 711.99,
      priceTwo: "\$9,922.99",
    ),
    HomeProducts(
      quantity: 1,
      id: 8,
      color: const Color(0xffBDE8E3),
      image: "lib/assets/images/image3.png",
      productTitle: "Flanell Uniqlo",
      storeTitle: "Unialo Store",
      priceOne: 86.00,
      priceTwo: "\$122.00",
    ),
    HomeProducts(
      quantity: 1,
      id: 9,
      color: const Color(0xffFFE5D7),
      image: "lib/assets/images/image4.png",
      productTitle: "Eyeglasses Gucci",
      storeTitle: "Gucci",
      priceOne: 211.00,
      priceTwo: "\$4,444.99",
    ),
    HomeProducts(
      quantity: 1,
      id: 10,
      color: const Color(0xffBDE8E3),
      image: "lib/assets/images/image5.png",
      productTitle: "Flanell Uniqlo",
      storeTitle: "Unialo Store",
      priceOne: 86.00,
      priceTwo: "\$122.00",
    ),
    HomeProducts(
      quantity: 1,
      id: 11,
      color: const Color(0xffFFE5D7),
      image: "lib/assets/images/image6.png",
      productTitle: "Eyeglasses Gucci",
      storeTitle: "Gucci",
      priceOne: 211.00,
      priceTwo: "\$4,444.99",
    ),
  ];

  List<HomeProducts> get homeProducts => _homeProducts;

  // Method to update the quantity of a product
  void updateProductQuantity(int productId, int newQuantity) {
    final productIndex =
        _homeProducts.indexWhere((product) => product.id == productId);
    if (productIndex != -1) {
      _homeProducts[productIndex].updateQuantity(newQuantity);
      notifyListeners();
    }
  }
}
