import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/utils/constants.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    Key? key,
    required this.pages,
  }) : super(key: key);

  final List<Widget> pages;

  @override
  // ignore: library_private_types_in_public_api
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;
  int index = 0;

  final List<String> unSelectedIcons = [
    'lib/assets/icons/home.svg',
    'lib/assets/icons/card.svg',
    'lib/assets/icons/transaction.svg',
    'lib/assets/icons/profile.svg',
  ];

  final List<String> selectedIcons = [
    'lib/assets/icons/home_selected.svg',
    'lib/assets/icons/selected_feed.svg',
    'lib/assets/icons/selected_transaction.svg',
    'lib/assets/icons/profile.svg',
  ];

  final List<String> labels = [
    'Home',
    'Feeds',
    'Transactions',
    'My Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 88.25,
      child: BottomNavigationBar(
        selectedItemColor: const Color(0xffE98E06),
        selectedLabelStyle: kMedium.copyWith(fontSize: 11),
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: SvgPicture.asset(
                _selectedIndex == 0 ? selectedIcons[0] : unSelectedIcons[0],
                height: 24,
              ),
            ),
            label: labels[0],
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: SvgPicture.asset(
                _selectedIndex == 1 ? selectedIcons[1] : unSelectedIcons[1],
                height: 24,
              ),
            ),
            label: labels[1],
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: SvgPicture.asset(
                _selectedIndex == 2 ? selectedIcons[2] : unSelectedIcons[2],
                height: 24,
              ),
            ),
            label: labels[2],
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: SvgPicture.asset(
                _selectedIndex == 3 ? selectedIcons[3] : unSelectedIcons[3],
                height: 24,
              ),
            ),
            label: labels[3],
          ),
        ],
      ),
    );
  }
}
