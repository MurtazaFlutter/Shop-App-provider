import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: const BoxDecoration(color: appBarColor),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize! * 2.5,
          vertical: SizeConfig.defaultSize! * 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () => Scaffold.of(context).openDrawer(),
                      child: SvgPicture.asset(
                        'lib/assets/icons/menu.svg',
                        height: SizeConfig.defaultSize! * 1.8,
                        width: SizeConfig.defaultSize! * 1.8,
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.defaultSize! * 1.5,
                    ),
                    Text('Home',
                        style: kSemiBold.copyWith(
                          fontSize: SizeConfig.defaultSize! * 1.4,
                          color: Colors.white,
                        )),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'lib/assets/icons/mail.svg',
                      height: SizeConfig.defaultSize! * 1.382,
                      width: SizeConfig.defaultSize! * 1.822,
                    ),
                    SizedBox(
                      width: SizeConfig.defaultSize! * 1.5,
                    ),
                    SvgPicture.asset(
                      'lib/assets/icons/notifications.svg',
                      height: SizeConfig.defaultSize! * 2.9,
                      width: SizeConfig.defaultSize! * 2.8,
                    ),
                    SizedBox(
                      width: SizeConfig.defaultSize! * 1.5,
                    ),
                    SvgPicture.asset(
                      'lib/assets/icons/cart.svg',
                      height: SizeConfig.defaultSize! * 2.8,
                      width: SizeConfig.defaultSize! * 2.8,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('lib/assets/icons/location.svg'),
                SizedBox(
                  width: SizeConfig.defaultSize! * 1,
                ),
                Text(
                  'St 394 Karachi, Sindh, Pakistan',
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: kRegular.copyWith(
                    fontSize: SizeConfig.defaultSize! * 1.3,
                    color: Colors.white,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 2,
            ),
            Container(
              height: SizeConfig.defaultSize! * 4.3,
              width: SizeConfig.defaultSize! * 30.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(
                        SizeConfig.defaultSize! * 1,
                      ),
                      child: SvgPicture.asset('lib/assets/icons/search.svg'),
                    ),
                    contentPadding: EdgeInsets.only(
                      left: SizeConfig.defaultSize! * 2,
                      top: SizeConfig.defaultSize! * 2,
                      bottom: SizeConfig.defaultSize! * 1.5,
                      right: SizeConfig.defaultSize! * 2,
                    ),
                    hintText: 'Search Product here',
                    hintStyle: kRegular.copyWith(
                      fontSize: SizeConfig.defaultSize! * 1.1,
                      color: kGrey,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
