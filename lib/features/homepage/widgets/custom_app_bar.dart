import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/features/cart/views/cart_screen.dart';
import 'package:shopping_app/utils/constants.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  final String title;
  String? cartIcon;
  CustomAppBar({
    required this.title,
    this.cartIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: kSemiBold.copyWith(
          fontSize: 15,
          color: kBlack,
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Padding(
          padding: const EdgeInsets.all(18.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset('lib/assets/icons/Back.svg'),
          )),
      actions: [
        Row(
          children: [
            SvgPicture.asset('lib/assets/icons/message_black.svg'),
            const SizedBox(
              width: 15,
            ),
            SvgPicture.asset('lib/assets/icons/notifications_black.svg'),
            const SizedBox(
              width: 15,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const CartScreen()),
                    ),
                  );
                },
                child: SvgPicture.asset(cartIcon.toString())),
            const SizedBox(
              width: 15,
            ),
          ],
        )
      ],
    );
  }
}
