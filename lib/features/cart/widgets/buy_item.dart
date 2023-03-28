import 'package:flutter/material.dart';
import 'package:shopping_app/features/checkout/views/check_out_screen.dart';
import 'package:shopping_app/utils/constants.dart';
import '../../../common/default_button.dart';
import '../../../utils/size_config.dart';

class BuyItem extends StatelessWidget {
  // final VoidCallback onTap;
  final int quantity;
  final String price;
  const BuyItem({
    // required this.onTap,
    required this.quantity,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize! * 11.6,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Total Payment',
                style: kMedium.copyWith(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '\$$price',
                style: kMedium.copyWith(
                  fontSize: SizeConfig.defaultSize! * 2,
                  color: kGreen,
                ),
              ),
            ],
          ),
          DefaultButton(
              buttonTitle: 'Buy ($quantity items) ',
              width: SizeConfig.defaultSize! * 18.29,
              height: SizeConfig.defaultSize! * 5,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckOutScreen(),
                    ));
              })
        ],
      ),
    );
  }
}
