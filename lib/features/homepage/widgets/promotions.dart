import 'package:flutter/material.dart';
import '../../../models/promotions.dart';
import '../../../utils/size_config.dart';

class Promotions extends StatelessWidget {
  const Promotions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize! * 15,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: promotionImages.length,
        //padding: const EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              promotionImages[index].toString(),
            ),
          );
        }),
      ),
    );
  }
}
