import 'package:flutter/material.dart';

import '../models/cart_item_model.dart';
import '../models/products_model.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addToCart(
    HomeProducts homeProducts,
  ) {
    final cartItem = CartItem(
      homeProducts: homeProducts,
    );
    _items.add(cartItem);
    notifyListeners();
  }
}
