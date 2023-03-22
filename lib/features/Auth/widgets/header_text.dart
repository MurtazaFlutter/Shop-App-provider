import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants.dart';

class HeaderWidget extends StatelessWidget {
  final String title1;
  final String title2;
  const HeaderWidget({
    Key? key,
    required this.title1,
    required this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(
              'lib/assets/icons/Ellipse.svg',
              height: 161,
              width: 161,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title1,
                  style: kMedium.copyWith(
                    fontSize: 28,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(title2,
                  style: kRegular.copyWith(
                    fontSize: 12,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
