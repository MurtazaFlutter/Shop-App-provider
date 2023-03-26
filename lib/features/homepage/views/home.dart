import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants.dart';
import 'package:shopping_app/utils/size_config.dart';
import '../../AllProducts/all_products_screen.dart';
import '../../../common/custom_navigation_bar.dart';
import '../../Drawer/drawer.dart';
import '../widgets/categories_list.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/products_grid.dart';
import '../widgets/promotions.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    SizeConfig().init(context);
    // final args = ModalRoute.of(context)!.settings.arguments as HomeProducts;
    return Scaffold(
      key: scaffoldKey,
      drawer: const DrawerWidget(),
      backgroundColor: scaffoldColor,
      bottomNavigationBar: const CustomNavigationBar(
        pages: [
          Home(),
        ],
      ),
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const HomeAppBar(),
              SizedBox(
                height: SizeConfig.defaultSize! * 3,
              ),
              const CategoriesList(),
              const Promotions(),
              SizedBox(height: SizeConfig.defaultSize! * 2),
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
              const ProductsGrid(),
            ],
          ),
        );
      }),
    );
  }
}
