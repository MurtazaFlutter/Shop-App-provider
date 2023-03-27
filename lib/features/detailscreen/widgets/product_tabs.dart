import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class ProductTabBar extends StatelessWidget {
  const ProductTabBar({
    super.key,
    required this.controller,
  });

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        indicatorPadding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize! * 2,
          vertical: SizeConfig.defaultSize! * 0.5,
        ),
        indicatorColor: kGreen,
        labelColor: kGreen,
        labelStyle: kMedium.copyWith(fontSize: SizeConfig.defaultSize! * 1.2),
        unselectedLabelColor: kDarkGrey,
        controller: controller,
        tabs: const [
          Tab(
            text: 'Details',
          ),
          Tab(
            text: 'Reviews',
          ),
        ]);
  }
}
