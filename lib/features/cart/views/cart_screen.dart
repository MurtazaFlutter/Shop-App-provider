import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/common/default_button.dart';
import 'package:shopping_app/providers/cart.dart';
import 'package:shopping_app/utils/size_config.dart';

import '../../../utils/constants.dart';
import '../../homepage/widgets/custom_app_bar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool _selectAll = false;
  bool itemSelection = false;
  bool item = false;
  final List<bool> _itemSelections = List.filled(5, false);
  final List<int> _itemQuantities = List.filled(5, 1);

  // _toggleSelectAll(bool value) {
  //   setState(() {
  //     _selectAll = value;
  //     _itemSelections = List.filled(_itemSelections.length, value);
  //   });
  // }

  void _toggleItemSelection(int index, bool value) {
    setState(() {
      _itemSelections[index] = value;
      if (!_itemSelections.contains(false)) {
        _selectAll = true;
      } else {
        _selectAll = false;
      }
    });
  }

  void _incrementItemQuantity(int index) {
    setState(() {
      _itemQuantities[index]++;
    });
  }

  void _decrementItemQuantity(int index) {
    setState(() {
      if (_itemQuantities[index] > 1) {
        _itemQuantities[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: Container(
        height: SizeConfig.defaultSize! * 11.6,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Total Payment',
                  style: kMedium.copyWith(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '\$1,468.20',
                  style: kMedium.copyWith(
                    fontSize: 20,
                    color: kGreen,
                  ),
                ),
              ],
            ),
            DefaultButton(
                buttonTitle: 'Buy (  item)',
                width: SizeConfig.defaultSize! * 18.29,
                height: SizeConfig.defaultSize! * 5,
                onTap: () {})
          ],
        ),
      ),
      backgroundColor: scaffoldColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: CustomAppBar(title: 'Your Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<CartNotifier>(builder: (context, cartNotifier, _) {
          final cart = cartNotifier.cart;
          return Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: _selectAll,
                    onChanged: (value) {
                      itemSelection = !itemSelection;
                    },
                    fillColor: MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  const Text('Select All items'),
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
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    itemSelection = !itemSelection;
                                    _toggleItemSelection(index, itemSelection);
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    color: itemSelection
                                        ? Colors.green
                                        : Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: itemSelection
                                          ? Colors.green
                                          : Colors.grey,
                                    ),
                                  ),
                                  child: itemSelection
                                      ? const Icon(Icons.check,
                                          color: Colors.white, size: 18)
                                      : Container(),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),

                              // Container(
                              //   height: 25,
                              //   decoration: const BoxDecoration(
                              //     color: Colors.white,
                              //     shape: BoxShape.circle,
                              //   ),
                              //   child: Checkbox(
                              //     value: _itemSelections[index],
                              //     onChanged: (value) {
                              //       _toggleItemSelection(index, value!);
                              //     },
                              //     checkColor: Colors.green,
                              //     activeColor: Colors.white,
                              //   ),
                              // ),
                              Image.asset(item.image),
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      item.storeTitle,
                                      style: kMedium.copyWith(
                                        fontSize: SizeConfig.defaultSize! * 1.4,
                                      ),
                                    ),
                                    Text(
                                      item.priceOne,
                                      style: kSemiBold.copyWith(
                                          fontSize:
                                              SizeConfig.defaultSize! * 1.5,
                                          color: kGreen),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            _decrementItemQuantity(index);
                                          },
                                          child: Container(
                                            height:
                                                SizeConfig.defaultSize! * 2.7,
                                            width:
                                                SizeConfig.defaultSize! * 2.7,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.61),
                                              border: Border.all(
                                                  color: Colors.black12),
                                            ),
                                            child: Center(
                                              child: SvgPicture.asset(
                                                  'lib/assets/icons/remove.svg'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: SizeConfig.defaultSize! * 1,
                                        ),
                                        Text(
                                          _itemQuantities[index].toString(),
                                          style: kSemiBold.copyWith(
                                              fontSize:
                                                  SizeConfig.defaultSize! *
                                                      1.2),
                                        ),
                                        SizedBox(
                                          width: SizeConfig.defaultSize! * 1,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _incrementItemQuantity(index);
                                          },
                                          child: Container(
                                            height:
                                                SizeConfig.defaultSize! * 2.7,
                                            width:
                                                SizeConfig.defaultSize! * 2.7,
                                            decoration: BoxDecoration(
                                              color: kGreen,
                                              borderRadius:
                                                  BorderRadius.circular(10.61),
                                              border: Border.all(
                                                  color: Colors.black12),
                                            ),
                                            child: Center(
                                              child: SvgPicture.asset(
                                                  'lib/assets/icons/add.svg'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: SizeConfig.defaultSize! * 8,
                                        ),
                                        SvgPicture.asset(
                                            'lib/assets/icons/delete.svg'),
                                      ],
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
