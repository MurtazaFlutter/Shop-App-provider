import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../models/drawer_model.dart';
import '../../../utils/constants.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...List.generate(
            drawerModel.length,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        drawerModel[index]['icon'],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        drawerModel[index]['title'],
                        style: kRegular.copyWith(fontSize: 13, color: kGrey),
                      )
                    ],
                  ),
                ))
      ],
    );
  }
}
