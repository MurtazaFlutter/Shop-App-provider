import 'products_model.dart';

class CartItem {
  final HomeProducts homeProducts;
  int quantity;

  CartItem({
    required this.homeProducts,
    this.quantity = 1,
  });

  double get subtotal {
    return homeProducts.priceOne * quantity;
  }
}



// //   Map<String, dynamic> toMap() {
// //     return {
// //       'id': id,
// //       'title': title,
// //       'quantity': quantity,
// //       'price': price,
// //       'image': image,
// //       'unitTap': unitTap,
// //       'productPrice': productPrice,
// //     };
// //   }

// //   factory CartItem.fromMap(Map<String, dynamic> map) {
// //     if (map == null) return null;

// //     return CartItem(
// //       id: map['id'],
// //       title: map['title'],
// //       quantity: map['quantity'],
// //       price: map['price'],
// //       image: map['image'],
// //       unitTap: map['unitTap'],
// //       productPrice: map['productPrice'],
// //     );
// //   }

// //   String toJson() => json.encode(toMap());

// //   factory CartItem.fromJson(String source) => CartItem.fromMap(json.decode(source));
// // }
// }
