import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widget/drawer_menu.dart';
import 'widget/user_balance.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('lib/assets/icons/logo.svg'),
                const SizedBox(
                  height: 50,
                ),
                const UserWidget(),
                const SizedBox(
                  height: 50,
                ),
                const DrawerMenu()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
