import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/promotion_provider.dart';
import '../../../utils/size_config.dart';

class Promotions extends StatelessWidget {
  const Promotions({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PromotionsProvider>(
        builder: (context, promotionsProvider, child) {
      List promotions = promotionsProvider.promotionImages;
      return Container(
        height: SizeConfig.defaultSize! * 15,
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: promotions.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                promotions[index].toString(),
              ),
            );
          }),
        ),
      );
    });
  }
}
