import 'package:flutter/material.dart';
import 'package:shopping_app/models/products_model.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import '../../product_detail_screen.dart';

class ProductsGrid extends StatelessWidget {
  final int count;
  final List differentModel;
  const ProductsGrid({
    required this.count,
    required this.differentModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 1),
      child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: count,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: SizeConfig.defaultSize! * 2,
            crossAxisSpacing: SizeConfig.defaultSize! * 2,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return ProductDetailScreen(
                    color: products[index].color,
                    image: products[index].image,
                    productTitle: products[index].productTitle,
                    storeTitle: products[index].storeTitle,
                    priceOne: products[index].image,
                  );
                })));
              },
              child: Container(
                height: SizeConfig.defaultSize! * 10.9,
                width: SizeConfig.defaultSize! * 10.9,
                // height: size.height * 0.0180,
                // width: size.width * 0.0180,
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
                          color: differentModel[index].color,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          )),
                      child: Image.asset(differentModel[index].image),
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
                            differentModel[index].productTitle,
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
                                differentModel[index].storeTitle,
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
                                differentModel[index].priceOne,
                                style: kSemiBold.copyWith(
                                    fontSize: SizeConfig.defaultSize! * 1.5,
                                    color: kGreen),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                differentModel[index].priceTwo,
                                style: kMedium.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: SizeConfig.defaultSize! * 1.5,
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
  }
}
