import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class ReviewTab extends StatelessWidget {
  const ReviewTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD \n500GB SECOND',
          textAlign: TextAlign.justify,
        ),
        Text('data'),
      ],
    );
  }
}

class QuantityContainer extends StatelessWidget {
  final IconData icon;
  int count;
  final VoidCallback onTap;

  QuantityContainer({
    required this.onTap,
    required this.icon,
    this.count = 1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool selectedIndex = false;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: SizeConfig.defaultSize! * 2.7,
        width: SizeConfig.defaultSize! * 2.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.61),
          border:
              // ignore: dead_code
              Border.all(color: selectedIndex ? Colors.white : Colors.black12),
        ),
        child: Center(
          child: Icon(icon, size: SizeConfig.defaultSize! * 2),
        ),
      ),
    );
  }
}
