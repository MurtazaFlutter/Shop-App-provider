import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/providers/drawer_providers.dart';
import '../../../utils/constants.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<DrawerModelProvider>(
        builder: (context, drawerModelProvider, child) {
      final getDrawerModel = drawerModelProvider.drawerModel;
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(
              getDrawerModel.length,
              (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          getDrawerModel[index]['icon'],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          getDrawerModel[index]['title'],
                          style: kRegular.copyWith(fontSize: 13, color: kGrey),
                        )
                      ],
                    ),
                  ))
        ],
      );
    });
  }
}
