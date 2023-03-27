import 'package:flutter/material.dart';

class PromotionsProvider with ChangeNotifier {
  final List<String> _promotionImages = [
    'lib/assets/images/banner1.png',
    'lib/assets/images/banner2.png',
    'lib/assets/images/banner3.png',
    'lib/assets/images/banner4.png',
  ];

  List get promotionImages => _promotionImages;
}
