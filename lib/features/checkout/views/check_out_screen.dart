import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/features/cart/widgets/buy_item.dart';
import 'package:shopping_app/features/checkout/widgets/title_widget.dart';
import 'package:shopping_app/features/homepage/widgets/custom_app_bar.dart';
import 'package:shopping_app/providers/cart_notifier.dart';
import 'package:shopping_app/utils/size_config.dart';
import '../../../utils/constants.dart';
import '../widgets/check_out_container.dart';
import '../widgets/shipping_address.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);
    SizeConfig().init(context);

    return Scaffold(
      bottomNavigationBar: BuyItem(
        price: (cart.totalPrice).toStringAsFixed(2),
        quantity: cart.items.length,
      ),
      backgroundColor: scaffoldColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: CustomAppBar(
          title: 'CheckOut',
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize! * 2,
            vertical: SizeConfig.defaultSize! * 3,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ShippingAddress(),
              SizedBox(
                height: SizeConfig.defaultSize! * 2,
              ),
              const TitleWidget(title: 'Summery Item'),
              SizedBox(
                height: SizeConfig.defaultSize! * .5,
              ),
              CheckOutContainer(
                // height: SizeConfig.defaultSize! * 18,
                width: double.infinity,
                onTap: () {},
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: cart.items.length,
                    itemBuilder: ((context, index) {
                      final item = cart.items[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.defaultSize! * 1,
                          vertical: SizeConfig.defaultSize! * 1,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      item.homeProducts.image,
                                      height: SizeConfig.defaultSize! * 6,
                                      width: SizeConfig.defaultSize! * 6,
                                    ),
                                    Column(
                                      children: [
                                        Text(item.homeProducts.productTitle),
                                        Text(
                                          '\$${item.homeProducts.priceOne}',
                                          style: kSemiBold.copyWith(
                                              fontSize:
                                                  SizeConfig.defaultSize! * 1.5,
                                              color: kGreen),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                          'Quantity ${item.homeProducts.quantity}'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Divider()
                          ],
                        ),
                      );
                    })),
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * 2,
              ),
              CheckOutContainer(
                  height: SizeConfig.defaultSize! * 7,
                  width: double.infinity,
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.defaultSize! * 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Enter a Coupon Code',
                          style: kRegular.copyWith(
                              color: kGrey,
                              fontSize: SizeConfig.defaultSize! * 1.1),
                        ),
                        Container(
                          height: SizeConfig.defaultSize! * 3.92,
                          width: SizeConfig.defaultSize! * 10.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff01A688),
                          ),
                          child: Center(
                            child: Text(
                              'Use Coupon'.toUpperCase(),
                              style: kSemiBold.copyWith(
                                  color: Colors.white,
                                  fontSize: SizeConfig.defaultSize! * 0.9),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: SizeConfig.defaultSize! * 2,
              ),
              const TitleWidget(title: 'Summery Order'),
              SizedBox(
                height: SizeConfig.defaultSize! * .5,
              ),
              CheckOutContainer(
                  height: SizeConfig.defaultSize! * 30,
                  width: double.infinity,
                  onTap: () {},
                  child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: ((context, index) {
                        return const OrderSummeryInFo();
                      }))),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderSummeryInFo extends StatelessWidget {
  const OrderSummeryInFo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery Fee',
                style: kRegular.copyWith(
                  fontSize: SizeConfig.defaultSize! * 1.2,
                  color: kGrey,
                ),
              ),
              Text('\$4.00',
                  style: kRegular.copyWith(
                    fontSize: SizeConfig.defaultSize! * 1.2,
                    color: kGrey,
                  )),
            ],
          ),
          index == 0 && index == 1
              ? Container()
              : const Divider(
                  color: scaffoldColor,
                )
        ],
      ),
    );
  }
}
