import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/products_model.dart';
import 'package:shopping_app/providers/cart_notifier.dart';
import 'package:shopping_app/utils/constants.dart';
import '../../../common/default_button.dart';
import '../../../utils/size_config.dart';
import '../../homepage/widgets/custom_app_bar.dart';
import '../widgets/product_detail_image.dart';
import '../widgets/product_info.dart';
import '../widgets/product_spec.dart';
import '../widgets/product_tabs.dart';
import '../widgets/review_tab.dart';
import '../widgets/select_colors.dart';

class ProductDetailScreen extends StatefulWidget {
  final String image;
  final Color color;
  final String productTitle;
  final String storeTitle;
  final String priceOne;
  final String priceTwo;

  const ProductDetailScreen({
    super.key,
    required this.color,
    required this.image,
    required this.productTitle,
    required this.storeTitle,
    required this.priceOne,
    required this.priceTwo,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      animationDuration: const Duration(seconds: 5),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(SizeConfig.defaultSize! * 6.9),
            child: CustomAppBar(
              title: '',
              cartIcon: 'lib/assets/icons/cart_black.svg',
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailImage(widget: widget),
            ProductInfo(
              productTitle: widget.productTitle,
              storeTitle: widget.storeTitle,
              priceOne: widget.priceOne,
              priceTwo: widget.priceTwo,
            ),
            ProductTabBar(controller: controller),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: [
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ProductSpecifications(),
                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),
                          SelectColors(),
                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),
                          const Divider(),
                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  QuantityContainer(
                                    icon: Icons.remove,
                                    onTap: () {},
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text('1'),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  QuantityContainer(
                                    onTap: () {},
                                    icon: Icons.add,
                                  ),
                                ],
                              ),
                              DefaultButton(
                                  height: SizeConfig.defaultSize! * 5,
                                  width: SizeConfig.defaultSize! * 18.5,
                                  buttonTitle: 'Add to Cart',
                                  onTap: () {
                                    HomeProducts homeProducts = HomeProducts(
                                      color: widget.color,
                                      image: widget.image,
                                      productTitle: widget.productTitle,
                                      storeTitle: widget.storeTitle,
                                      priceOne: widget.priceOne,
                                      priceTwo: widget.priceTwo,
                                    );

                                    cartProvider.addToCart(homeProducts);

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        padding: const EdgeInsets.all(20),
                                        duration: const Duration(seconds: 3),
                                        backgroundColor: kGreen,
                                        content: Text(
                                          'Product added to Cart successfully',
                                          style: kMedium.copyWith(fontSize: 15),
                                        ),
                                      ),
                                    );
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const ReviewTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
