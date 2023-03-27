import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: kSemiBold.copyWith(
        fontSize: SizeConfig.defaultSize! * 1.3,
      ),
    );
  }
}
