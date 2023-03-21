import 'package:flutter/material.dart';
import '../../models/all_products_model.dart';
import '../../widgets/custom_navigation_bar.dart';
import '../homepage/widgets/products_grid.dart';
import 'widgets/app_bar.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as AllProducts;
    return Scaffold(
      bottomNavigationBar: const CustomNavigationBar(
        pages: [],
      ),
      backgroundColor: const Color(0xffE9F1F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AllProductsAppBar(),
              const SizedBox(
                height: 30,
              ),
              ProductsGrid(
                differentModel: allproducts,
                count: allproducts.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
