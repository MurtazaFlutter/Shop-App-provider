import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class PasswordAction extends StatefulWidget {
  const PasswordAction({super.key});

  @override
  State<PasswordAction> createState() => _PasswordActionState();
}

class _PasswordActionState extends State<PasswordAction> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              activeColor: kOrangeColor,
              value: isChecked,
              onChanged: ((value) => setState(() {
                    isChecked = value!;
                  })),
            ),
            Text(
              'Remember me',
              style: kRegular.copyWith(fontSize: 12, color: kGrey),
            ),
          ],
        ),
        Text(
          'Forgot Password',
          style: kRegular.copyWith(fontSize: 12, color: kOrangeColor),
        )
      ],
    );
  }
}
