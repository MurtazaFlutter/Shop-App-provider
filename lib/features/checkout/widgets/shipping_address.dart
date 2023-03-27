import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import 'title_widget.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleWidget(
          title: 'Shipping Address',
        ),
        SizedBox(
          height: SizeConfig.defaultSize! * 1.5,
        ),
        Container(
          width: double.infinity,
          height: SizeConfig.defaultSize! * 9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Clifton area, Karachi, Sindhi',
                  style: kRegular.copyWith(
                    fontSize: SizeConfig.defaultSize! * 1.2,
                  ),
                ),
                Text(
                  'Change address',
                  style: kRegular.copyWith(
                      fontSize: SizeConfig.defaultSize! * 1, color: kGreen),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
