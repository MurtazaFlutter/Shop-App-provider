import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class AccountSelect extends StatelessWidget {
  final String title1;
  final String title2;
  final VoidCallback onTap;
  const AccountSelect({
    required this.onTap,
    required this.title1,
    required this.title2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title1,
            style: kRegular.copyWith(
              fontSize: 12,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title2,
            style: kRegular.copyWith(
              fontSize: 13,
              color: kOrangeColor,
            ),
          ),
        ],
      ),
    );
  }
}
