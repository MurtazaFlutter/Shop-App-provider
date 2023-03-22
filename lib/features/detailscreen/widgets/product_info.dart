import 'package:flutter/cupertino.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.productTitle,
    required this.storeTitle,
  });

  final String productTitle;
  final String storeTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productTitle,
                style: kMedium.copyWith(
                  fontSize: SizeConfig.defaultSize! * 2,
                ),
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * 2,
              ),
              Row(
                children: [
                  Text(
                    storeTitle,
                    style: kMedium.copyWith(
                      fontSize: SizeConfig.defaultSize! * 1.2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2),
          child: Column(
            children: [
              Text(
                '\$999.99',
                style: kSemiBold.copyWith(
                  color: kGreen,
                  fontSize: SizeConfig.defaultSize! * 1.9,
                ),
              ),
              Text(
                '\$1399.99',
                style: kSemiBold.copyWith(
                    color: kRed,
                    fontSize: SizeConfig.defaultSize! * 1,
                    decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
