import 'package:flutter/material.dart';
import '../models/cart_item_model.dart';
import '../models/products_model.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

// Add item to the cart
  bool addToCart(HomeProducts homeProducts) {
    // Check if item already exists in cart
    final index =
        _items.indexWhere((item) => item.homeProducts.id == homeProducts.id);

    if (index >= 0) {
      return false;
      // If item already exists, add new item
    } else {
      final cartItem = CartItem(
        homeProducts: homeProducts,
        quantity: 1,
        price: homeProducts.priceOne,
      );
      _items.add(cartItem);
      notifyListeners();
      return true;
    }
  }

  // Remove item from cart
  void removeFromCart(CartItem item) {
    _items.remove(item);
    notifyListeners();
  }

  // Calculate total price of item in cart
  double get totalPrice {
    double total = 0;
    for (var item in _items) {
      total +=
          double.parse(item.homeProducts.priceOne.toString()) * item.quantity;
    }
    return total;
  }

  // Clear cart
  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  //Updating the price based on the quantity
  void updateCartItemQuantity(HomeProducts homeProducts, int newQuantity) {
    final cartItemIndex =
        _items.indexWhere((item) => item.homeProducts.id == homeProducts.id);

    if (cartItemIndex >= 0) {
      final updateItem = _items[cartItemIndex];
      updateItem.quantity = newQuantity;
      updateItem.price = updateItem.homeProducts.priceOne * newQuantity;
      notifyListeners();
    }
  }
}
