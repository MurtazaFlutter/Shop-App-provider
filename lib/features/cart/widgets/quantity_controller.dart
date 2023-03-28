import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/providers/cart_notifier.dart';
import '../../../models/products_model.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class ProductQuantityController extends StatelessWidget {
  final HomeProducts homeProducts;
  final VoidCallback onTap;
  const ProductQuantityController({
    required this.homeProducts,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            if (homeProducts.quantity > 1) {
              cartProvider.updateCartItemQuantity(
                  homeProducts, homeProducts.quantity - 1);
              print(homeProducts.quantity);
              print(homeProducts.quantity.toString());
            }
          },
          child: Container(
              height: SizeConfig.defaultSize! * 2.7,
              width: SizeConfig.defaultSize! * 2.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.61),
                border: Border.all(color: Colors.black12),
              ),
              child: const Icon(Icons.remove)),
        ),
        SizedBox(
          width: SizeConfig.defaultSize! * 1,
        ),
        Text(
          homeProducts.quantity.toString(),
          style: kSemiBold.copyWith(fontSize: SizeConfig.defaultSize! * 1.2),
        ),
        SizedBox(
          width: SizeConfig.defaultSize! * 1,
        ),
        InkWell(
          onTap: () {
            cartProvider.updateCartItemQuantity(
                homeProducts, homeProducts.quantity + 1);
            print(homeProducts.quantity);
            print(homeProducts.quantity.toString());
          },
          child: Container(
            height: SizeConfig.defaultSize! * 2.7,
            width: SizeConfig.defaultSize! * 2.7,
            decoration: BoxDecoration(
              color: kGreen,
              borderRadius: BorderRadius.circular(10.61),
              border: Border.all(color: Colors.black12),
            ),
            child: Center(
              child: SvgPicture.asset('lib/assets/icons/add.svg'),
            ),
          ),
        ),
        SizedBox(
          width: SizeConfig.defaultSize! * 8,
        ),
        InkWell(
            onTap: onTap,
            child: SvgPicture.asset('lib/assets/icons/delete.svg')),
      ],
    );
  }
}
