import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/products_model.dart';
import '../../../providers/home_data_provider.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import '../../detailscreen/views/product_detail_screen.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Consumer<HomeProductsProvider>(
        builder: (context, homeProductsProvider, child) {
      List<HomeProducts> homeProducts = homeProductsProvider.homeProducts;
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 1),
        child: GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: homeProducts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: SizeConfig.defaultSize! * 2,
              crossAxisSpacing: SizeConfig.defaultSize! * 2,
            ),
            itemBuilder: (context, index) {
              HomeProducts products = homeProducts[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return ProductDetailScreen(
                      id: products.id,
                      color: products.color,
                      image: products.image,
                      productTitle: products.productTitle,
                      storeTitle: products.storeTitle,
                      priceOne: products.priceOne,
                      priceTwo: products.priceTwo,
                    );
                  })));
                },
                child: Container(
                  height: SizeConfig.defaultSize! * 10.9,
                  width: SizeConfig.defaultSize! * 10.9,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: SizeConfig.defaultSize! * 9.7,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: products.color,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            )),
                        child: Image.asset(products.image),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.defaultSize! * 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              products.storeTitle,
                              style: kMedium.copyWith(
                                  fontSize: SizeConfig.defaultSize! * 1.3),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  products.productTitle,
                                  style: kRegular.copyWith(
                                      fontSize: SizeConfig.defaultSize! * 1.1,
                                      color: kGrey),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$${products.priceOne}',
                                  style: kMedium.copyWith(
                                      fontSize: SizeConfig.defaultSize! * 1.5,
                                      color: kGreen),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  products.priceTwo,
                                  style: kMedium.copyWith(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: SizeConfig.defaultSize! * 1.3,
                                      color: const Color(0xffF25822)),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      );
    });
  }
}
