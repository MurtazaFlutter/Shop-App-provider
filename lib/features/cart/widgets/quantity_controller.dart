import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class ProductQuantityController extends StatelessWidget {
  const ProductQuantityController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: SizeConfig.defaultSize! * 2.7,
            width: SizeConfig.defaultSize! * 2.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.61),
              border: Border.all(color: Colors.black12),
            ),
            child: SvgPicture.asset('lib/assets/icons/remove.svg'),
          ),
        ),
        SizedBox(
          width: SizeConfig.defaultSize! * 1,
        ),
        Text(
          '1',
          style: kSemiBold.copyWith(fontSize: SizeConfig.defaultSize! * 1.2),
        ),
        SizedBox(
          width: SizeConfig.defaultSize! * 1,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: SizeConfig.defaultSize! * 2.7,
            width: SizeConfig.defaultSize! * 2.7,
            decoration: BoxDecoration(
              color: kGreen,
              borderRadius: BorderRadius.circular(10.61),
              border: Border.all(color: Colors.black12),
            ),
            child: Center(
              child: SvgPicture.asset('lib/assets/icons/add.svg'),
            ),
          ),
        ),
        SizedBox(
          width: SizeConfig.defaultSize! * 8,
        ),
        SvgPicture.asset('lib/assets/icons/delete.svg'),
      ],
    );
  }
}
