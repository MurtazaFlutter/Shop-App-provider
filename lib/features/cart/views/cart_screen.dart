import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/cart_notifier.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import '../../homepage/widgets/custom_app_bar.dart';
import '../widgets/buy_item.dart';
import '../widgets/quantity_controller.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    SizeConfig().init(context);
    bool showProduct = cart.items.isNotEmpty;
    return Scaffold(
      bottomNavigationBar: BuyItem(
        price: (cart.totalPrice).toStringAsFixed(2),
        quantity: cart.items.length,
      ),
      backgroundColor: scaffoldColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: CustomAppBar(title: 'Your Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer(builder: (context, cartNotifier, _) {
          return !showProduct
              ? Center(
                  child: Text(
                    'Your Cart is empty',
                    textAlign: TextAlign.center,
                    style: kBold.copyWith(
                      fontSize: SizeConfig.defaultSize! * 3,
                    ),
                  ),
                )
              : Column(
                  children: [
                    Row(
                      children: const [
                        Text('Select All items'),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: cart.items.length,
                        itemBuilder: (context, index) {
                          final item = cart.items[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              height: SizeConfig.defaultSize! * 12.5,
                              width: SizeConfig.defaultSize! * 30.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                        child: Image.asset(
                                            item.homeProducts.image)),
                                    Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            item.homeProducts.productTitle,
                                            style: kMedium.copyWith(
                                              fontSize:
                                                  SizeConfig.defaultSize! * 1.4,
                                            ),
                                          ),
                                          Text(
                                            '\$${item.homeProducts.priceOne}',
                                            style: kSemiBold.copyWith(
                                                fontSize:
                                                    SizeConfig.defaultSize! *
                                                        1.5,
                                                color: kGreen),
                                          ),
                                          ProductQuantityController(
                                            onTap: () {
                                              cart.removeFromCart(item);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
        }),
      ),
    );
  }
}
