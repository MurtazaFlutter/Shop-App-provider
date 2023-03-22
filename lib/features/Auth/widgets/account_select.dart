import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../views/sign_up_screen.dart';

class AccountSelect extends StatelessWidget {
  final String title1;
  final String title2;
  const AccountSelect({
    required this.title1,
    required this.title2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SignUpSceen()),
        );
      },
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
