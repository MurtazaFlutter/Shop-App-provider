import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';
import '../views/product_detail_screen.dart';

class ProductDetailImage extends StatelessWidget {
  const ProductDetailImage({
    super.key,
    required this.widget,
  });

  final ProductDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: SizeConfig.defaultSize! * 30,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.color,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              widget.image,
              fit: BoxFit.cover,
              height: SizeConfig.defaultSize! * 20,
            ),
            Positioned(
              right: 20,
              bottom: 0,
              child: Container(
                height: SizeConfig.defaultSize! * 4.4,
                width: SizeConfig.defaultSize! * 4.4,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                    )
                  ],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.favorite_border_outlined,
                  size: SizeConfig.defaultSize! * 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
