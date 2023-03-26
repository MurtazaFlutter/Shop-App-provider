import 'package:flutter/material.dart';

class DrawerModelProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _drawerModel = [
    {
      'icon': 'lib/assets/icons/home.svg',
      'title': 'Dashboard',
    },
    {
      'icon': 'lib/assets/icons/profile_icon.svg',
      'title': 'Become a Seller',
    },
    {
      'icon': 'lib/assets/icons/help.svg',
      'title': 'Help Center',
    },
    {
      'icon': 'lib/assets/icons/categories_icon.svg',
      'title': 'Categories',
    },
    {
      'icon': 'lib/assets/icons/bag.svg',
      'title': 'All Products',
    },
    {
      'icon': 'lib/assets/icons/calendar.svg',
      'title': 'New Release',
    },
    {
      'icon': 'lib/assets/icons/promotion.svg',
      'title': 'Promotion',
    },
    {
      'icon': 'lib/assets/icons/settings.svg',
      'title': 'Settings',
    },
    {
      'icon': 'lib/assets/icons/logout.svg',
      'title': 'Logout',
    },
  ];

  List get drawerModel => _drawerModel;
}
