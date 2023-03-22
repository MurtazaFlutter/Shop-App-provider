import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/models/products_model.dart';

import 'package:shopping_app/utils/constants.dart';
import 'package:shopping_app/utils/size_config.dart';

import '../../AllProducts/all_products_screen.dart';
import '../../../common/custom_navigation_bar.dart';
import '../widgets/categories_list.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/products_grid.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // final args = ModalRoute.of(context)!.settings.arguments as HomeProducts;
    return Scaffold(
      backgroundColor: const Color(0xffE9F1F5),
      bottomNavigationBar: const CustomNavigationBar(
        pages: [
          Home(),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const HomeAppBar(),
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
            CategoriesList(),
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize! * 2,
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                height: SizeConfig.defaultSize! * 15,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: 3,
                      //padding: const EdgeInsets.symmetric(horizontal: 20),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return SvgPicture.asset(
                            'lib/assets/images/promotions1.svg');
                      })),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.defaultSize! * 3),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize! * 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Products',
                    style: kSemiBold.copyWith(
                      fontSize: SizeConfig.defaultSize! * 1.3,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const AllProducts()),
                        ),
                      );
                    },
                    child: Text(
                      'Sell all',
                      style: kRegular.copyWith(
                          fontSize: SizeConfig.defaultSize! * 1.3,
                          color: kGreen),
                    ),
                  )
                ],
              ),
            ),
            ProductsGrid(
              differentModel: products,
              count: products.length,
            ),
          ],
        ),
      ),
    );
  }
}
