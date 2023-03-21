import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class ProductDetailScreen extends StatelessWidget {
  final String image;
  final Color color;
  final String productTitle;
  final String storeTitle;
  final String priceOne;

  const ProductDetailScreen({
    super.key,
    required this.color,
    required this.image,
    required this.productTitle,
    required this.storeTitle,
    required this.priceOne,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(65), child: CustomAppBar()),
      body: Column(
        children: [
          Container(
            constraints:
                const BoxConstraints(maxHeight: 317, maxWidth: double.infinity),
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
            ),
            child: Image.asset('lib/assets/images/detail_image1.jpg'),
          ),
          Expanded(
            child: Text(storeTitle),
          ),
          Expanded(
            child: Text(storeTitle),
          ),
        ],
      ),
    );
  }
}
