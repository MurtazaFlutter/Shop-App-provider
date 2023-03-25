import 'package:shopping_app/models/products_model.dart';

class Cart {
  final List<HomeProducts> items;

  Cart({required this.items});

  //double get totalPrice => items.fold(0, (acc, item) => acc + item.price);
}
