import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import '../models/promotions.dart';
import 'all_products_data.dart';
import 'categories_provider.dart';
import 'drawer_providers.dart';
import 'home_data_provider.dart';

class AllProviders extends StatelessWidget {
  const AllProviders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => DrawerModelProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => HomeProductsProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => AllProductsProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => PromotionsProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => CategoriesProvider(),
      ),
    ], child: const MyApp());
  }
}
