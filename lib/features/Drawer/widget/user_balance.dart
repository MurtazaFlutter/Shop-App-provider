import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Balance',
              style: kRegular.copyWith(fontSize: 11, color: kGrey),
            ),
            Text(
              '\$809,87',
              style: kSemiBold.copyWith(fontSize: 17, color: kGreen),
            ),
          ],
        ),
        const VerticalDivider(
          color: Colors.red,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Reward Points',
              style: kRegular.copyWith(fontSize: 11, color: kGrey),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                text: '800 ',
                style: kSemiBold.copyWith(fontSize: 17, color: kOrangeColor),
              ),
              TextSpan(
                text: 'Points',
                style: kSemiBold.copyWith(fontSize: 12, color: kOrangeColor),
              ),
            ]))
          ],
        ),
      ],
    );
  }
}
