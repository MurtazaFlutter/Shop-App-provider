import 'package:flutter/material.dart';
import 'package:shopping_app/features/homepage/widgets/custom_app_bar.dart';
import 'package:shopping_app/utils/size_config.dart';
import '../../../utils/constants.dart';
import '../widgets/shipping_address.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: CustomAppBar(
          title: 'CheckOut',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize! * 2,
          vertical: SizeConfig.defaultSize! * 3,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ShippingAddress(),
          ],
        ),
      ),
    );
  }
}
