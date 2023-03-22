import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants.dart';
import '../../../common/default_button.dart';
import '../../../utils/size_config.dart';
import '../../homepage/widgets/custom_app_bar.dart';
import '../widgets/product_info.dart';

class ProductDetailScreen extends StatefulWidget {
  final String image;
  final Color color;
  final String productTitle;
  final String storeTitle;
  final String priceOne;

  const ProductDetailScreen({
    super.key,
    required this.color,
    required this.image,
    required this.productTitle,
    required this.storeTitle,
    required this.priceOne,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      animationDuration: const Duration(seconds: 5),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(SizeConfig.defaultSize! * 6.9),
            child: const CustomAppBar()),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailImage(widget: widget),
            ProductInfo(
                productTitle: widget.productTitle,
                storeTitle: widget.storeTitle),
            TabBar(
                indicatorPadding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.defaultSize! * 2,
                  vertical: SizeConfig.defaultSize! * 0.5,
                ),
                indicatorColor: kGreen,
                labelColor: kGreen,
                labelStyle:
                    kMedium.copyWith(fontSize: SizeConfig.defaultSize! * 1.2),
                unselectedLabelColor: kDarkGrey,
                controller: controller,
                tabs: const [
                  Tab(
                    text: 'Details',
                  ),
                  Tab(
                    text: 'Reviews',
                  ),
                ]),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: [
                  DetailsTab(),
                  const ReviewTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetailImage extends StatelessWidget {
  const ProductDetailImage({
    super.key,
    required this.widget,
  });

  final ProductDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: SizeConfig.defaultSize! * 30,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.color,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'lib/assets/images/detail_image1.jpg',
              height: SizeConfig.defaultSize! * 30,
            ),
            Positioned(
              right: 20,
              bottom: 0,
              child: Container(
                height: SizeConfig.defaultSize! * 4.4,
                width: SizeConfig.defaultSize! * 4.4,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                    )
                  ],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.favorite_border_outlined,
                  size: SizeConfig.defaultSize! * 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsTab extends StatelessWidget {
  DetailsTab({
    super.key,
  });
  final List selectColors = [
    'Green',
    'Red',
    'Yellow',
    'White',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD \n500GB SECOND',
                textAlign: TextAlign.justify,
                style: kRegular.copyWith(
                    fontSize: SizeConfig.defaultSize! * 1.2, color: kDarkGrey)),
            SizedBox(
              height: SizeConfig.defaultSize! * 1,
            ),
            Text(
              'Specification \n-Processor Core i3 \n-IMAC (Mid 2010) Memory 4GB 1333 MHz DDR3 (bisq upgrade) \n-Build in Display 21.5 inch (1920 X 1080,',
              style: kRegular.copyWith(
                  fontSize: SizeConfig.defaultSize! * 1.2, color: kDarkGrey),
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 2,
            ),
            Text('Color',
                style: kSemiBold.copyWith(
                    fontSize: SizeConfig.defaultSize! * 1.2, color: kBlack)),
            SizedBox(
              height: SizeConfig.defaultSize! * 1,
            ),
            Row(
              children: [
                ...List.generate(
                    selectColors.length,
                    (index) => Container(
                          margin: const EdgeInsets.only(right: 5),
                          height: SizeConfig.defaultSize! * 3.6,
                          width: SizeConfig.defaultSize! * 6.6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black12,
                              )),
                          child: Center(
                            child: Text(
                              selectColors[index].toString(),
                              style: kRegular.copyWith(
                                  fontSize: SizeConfig.defaultSize! * 1.2),
                            ),
                          ),
                        ))
              ],
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 2,
            ),
            const Divider(),
            SizedBox(
              height: SizeConfig.defaultSize! * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    QuantityContainer(
                      icon: Icons.remove,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('1'),
                    SizedBox(
                      width: 20,
                    ),
                    QuantityContainer(
                      icon: Icons.add,
                    ),
                  ],
                ),
                DefaultButton(
                  height: SizeConfig.defaultSize! * 5,
                  width: SizeConfig.defaultSize! * 18.5,
                  buttonTitle: 'Add to Cart',
                  onTap: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ReviewTab extends StatelessWidget {
  const ReviewTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'IMAC SILVER 21,5 INCH MID 2010/2011 RAM 8GB HDD \n500GB SECOND',
          textAlign: TextAlign.justify,
        ),
        Text('data'),
      ],
    );
  }
}

class QuantityContainer extends StatelessWidget {
  final IconData icon;
  const QuantityContainer({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool selectedIndex = false;
    return Container(
      height: SizeConfig.defaultSize! * 2.7,
      width: SizeConfig.defaultSize! * 2.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.61),
        border:
            Border.all(color: selectedIndex ? Colors.white : Colors.black12),
      ),
      child: Center(
        child: Icon(icon, size: SizeConfig.defaultSize! * 2),
      ),
    );
  }
}
