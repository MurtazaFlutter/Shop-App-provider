import 'package:flutter/material.dart';
import 'package:shopping_app/utils/size_config.dart';

import '../../../utils/constants.dart';

class SelectColors extends StatelessWidget {
  SelectColors({super.key});
  final List selectColors = [
    'Green',
    'Red',
    'Yellow',
    'White',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Color',
            style: kSemiBold.copyWith(
                fontSize: SizeConfig.defaultSize! * 1.2, color: kBlack)),
        SizedBox(
          height: SizeConfig.defaultSize! * 1,
        ),
        Row(
          children: [
            ...List.generate(
                selectColors.length,
                (index) => InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: SizeConfig.defaultSize! * 3.6,
                        width: SizeConfig.defaultSize! * 6.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black12,
                            )),
                        child: Center(
                          child: Text(
                            selectColors[index].toString(),
                            style: kRegular.copyWith(
                                fontSize: SizeConfig.defaultSize! * 1.2),
                          ),
                        ),
                      ),
                    ))
          ],
        ),
      ],
    );
  }
}
