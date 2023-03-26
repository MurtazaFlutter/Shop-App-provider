import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/providers/categories_provider.dart';

import '../../../utils/constants.dart';

// ignore: must_be_immutable
class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoriesProvider>(
        builder: (context, categoriesProvider, child) {
      final getCat = categoriesProvider.getCategories;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...List.generate(
            getCat.length,
            (index) => Column(
              children: [
                SvgPicture.asset(getCat[index]['image']),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  getCat[index]['title'],
                  style: kLight.copyWith(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      );
    });
  }
}
