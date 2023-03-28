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
                height: SizeConfig.defaultSize! * 18,
                width: double.infinity,
                onTap: () {},
                child: Container(),
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * 2,
              ),
              CheckOutContainer(
                height: SizeConfig.defaultSize! * 7,
                width: double.infinity,
                onTap: () {},
                child: Container(),
              ),
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
