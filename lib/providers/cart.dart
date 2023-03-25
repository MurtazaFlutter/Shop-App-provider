import 'package:flutter/material.dart';
import 'package:shopping_app/models/products_model.dart';
import 'cart_provider.dart';

class CartNotifier extends ChangeNotifier {
  Cart _cart = Cart(items: []);

  Cart get cart => _cart;

  void addItem(HomeProducts item) {
    _cart = Cart(items: [..._cart.items, item]);
    notifyListeners();
  }
}
