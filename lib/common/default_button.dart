import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/size_config.dart';

class DefaultButton extends StatelessWidget {
  final String buttonTitle;
  final double width;
  final double height;
  final VoidCallback onTap;
  const DefaultButton({
    required this.buttonTitle,
    required this.width,
    required this.height,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Expanded(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize! * 6,
            ),
            color: kOrangeColor,
          ),
          child: Center(
              child: Text(
            buttonTitle,
            style: kSemiBold.copyWith(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize! * 1.4,
            ),
          )),
        ),
      ),
    );
  }
}
