// class CartItem {
//   final String id;
//   final String title;
//   //final int quantity;
//   final String price;
//   final String image;
//   // final String unitTap;
//   // final int productPrice;

//   CartItem({
//     required this.id,
//     required this.title,
//     // required this.quantity,
//     required this.price,
//     required this.image,
//     // required this.unitTap,
//     // required this.productPrice,
//   });
import 'products_model.dart';

class CartItem {
  final HomeProducts homeProducts;
  int quantity;

  CartItem({
    required this.homeProducts,
    this.quantity = 1,
  });

  String get subtotal {
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
