import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/utils/size_config.dart';

import '../../../utils/constants.dart';

class AllProductsAppBar extends StatelessWidget {
  const AllProductsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: const BoxDecoration(
        color: appBarColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset('lib/assets/icons/menu.svg'),
                const SizedBox(
                  width: 20,
                ),
                Text('All Products',
                    style: kSemiBold.copyWith(
                      fontSize: SizeConfig.defaultSize! * 1.4,
                      color: Colors.white,
                    )),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'lib/assets/icons/mail.svg',
                  height: SizeConfig.defaultSize! * 1.382,
                  width: SizeConfig.defaultSize! * 1.822,
                ),
                SizedBox(
                  width: SizeConfig.defaultSize! * 1.5,
                ),
                SvgPicture.asset(
                  'lib/assets/icons/notifications.svg',
                  height: SizeConfig.defaultSize! * 2.9,
                  width: SizeConfig.defaultSize! * 2.8,
                ),
                SizedBox(
                  width: SizeConfig.defaultSize! * 1.5,
                ),
                SvgPicture.asset(
                  'lib/assets/icons/cart.svg',
                  height: SizeConfig.defaultSize! * 2.8,
                  width: SizeConfig.defaultSize! * 2.8,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
