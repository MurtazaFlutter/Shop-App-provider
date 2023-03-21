import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SvgPicture.asset('lib/assets/icons/Back.svg'),
      ),
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
            SvgPicture.asset('lib/assets/icons/cart_black.svg'),
            const SizedBox(
              width: 15,
            ),
          ],
        )
      ],
    );
  }
}
