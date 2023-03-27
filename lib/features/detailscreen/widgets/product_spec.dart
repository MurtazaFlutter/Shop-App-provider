import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class ProductSpecifications extends StatelessWidget {
  const ProductSpecifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD \n500GB SECOND',
            textAlign: TextAlign.justify,
            style: kRegular.copyWith(
                fontSize: SizeConfig.defaultSize! * 1.2, color: kDarkGrey)),
        SizedBox(
          height: SizeConfig.defaultSize! * 1,
        ),
        Text(
          'Specification \n-Processor Core i3 \n-IMAC (Mid 2010) Memory 4GB 1333 MHz DDR3 (bisq upgrade) \n-Build in Display 21.5 inch (1920 X 1080,',
          style: kRegular.copyWith(
              fontSize: SizeConfig.defaultSize! * 1.2, color: kDarkGrey),
        ),
      ],
    );
  }
}
