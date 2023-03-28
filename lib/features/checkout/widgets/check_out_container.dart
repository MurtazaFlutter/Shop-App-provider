import 'package:flutter/material.dart';

class CheckOutContainer extends StatelessWidget {
  double? height;
  final double width;
  final VoidCallback onTap;
  final Widget child;
  CheckOutContainer({
    this.height,
    required this.width,
    required this.onTap,
    required this.child,
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
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
        ),
      ),
    );
  }
}
