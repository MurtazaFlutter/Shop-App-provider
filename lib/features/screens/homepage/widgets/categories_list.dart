import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants.dart';

// ignore: must_be_immutable
class CategoriesList extends StatelessWidget {
  CategoriesList({
    super.key,
  });

  List<Map<String, dynamic>> categories = [
    {
      'image': "lib/assets/icons/category1.svg",
      'title': 'Electronics',
    },
    {
      'image': "lib/assets/icons/category2.svg",
      'title': 'Fashion',
    },
    {
      'image': "lib/assets/icons/category3.svg",
      'title': 'F&B',
    },
    {
      'image': "lib/assets/icons/category4.svg",
      'title': 'Beauty',
    },
    {
      'image': "lib/assets/icons/category5.svg",
      'title': 'Deals',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...List.generate(
          categories.length,
          (index) => Column(
            children: [
              SvgPicture.asset(categories[index]['image']),
              const SizedBox(
                height: 8,
              ),
              Text(
                categories[index]['title'],
                style: kLight.copyWith(fontSize: 12),
              ),
            ],
          ),
        )
      ],
    );
  }
}
