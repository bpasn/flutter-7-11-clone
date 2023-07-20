import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constance/dimention.dart';
import '../../constance/global_constance.dart';
import '../../widget/app_icon.dart';

class HeaderSession extends StatelessWidget {
  const HeaderSession({
    super.key,
    required this.images,
    required this.activeIndex,
    required this.listItem,
  });

  final List<String> images;
  final int activeIndex;
  final List<String> listItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            SizedBox(
              height: Dimensions.height300 +40,
              child: Stack(children: [
                SizedBox(
                  height: Dimensions.screenHeight / 4 * 1.3,
                  child: CarouselSlider.builder(
                    itemCount: images.length,
                    itemBuilder: (_, index, realindex) {
                      final urlimage = images[index];
                      return Image.network(
                        urlimage,
                        fit: BoxFit.fill,
                        width: 1000.0,
                      );
                    },
                    options: CarouselOptions(
                      viewportFraction: 1.0,
                      height: Dimensions.height300,
                      enlargeCenterPage: false,
                      initialPage: 0,
                      autoPlay: true,
                      // onPageChanged: (index, reason) {
                      //   setState(() {
                      //     activeIndex = index;
                      //   });
                      // },
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(
                      right: Dimensions.width20,
                      top: Dimensions.height20 * 5),
                  height: Dimensions.height120 * 2.52,
                  child: AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count: images.length,
                    effect:  const ExpandingDotsEffect(
                        dotWidth: 10,
                        dotHeight: 3,
                        strokeWidth: 1,
                        expansionFactor: 1.2,
                        activeDotColor: GlobalVariable.secondaryColor),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  height: Dimensions.height120 * 2.55,
                  padding: EdgeInsets.only(
                      top: Dimensions.height30 * 2,
                      left: Dimensions.width15,
                      right: Dimensions.width15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Container(
                      //   padding: EdgeInsets.all(Dimensions.width10 * 1.2),
                      //   width: Dimensions.screenwidth / 2 * 1.3,
                      //   decoration: const BoxDecoration(
                      //       color: GlobalVariable.backgroundColor,
                      //       borderRadius:
                      //           BorderRadius.all(Radius.circular(12))),
                      //   child: Row(
                      //       crossAxisAlignment: CrossAxisAlignment.end,
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         AppIcon(
                      //           size: Dimensions.width20,
                      //           icon: Icons.search_outlined,
                      //           iconSize: Dimensions.iconSize24,
                      //         ),
                      //         Container(
                      //           padding: EdgeInsets.only(
                      //             right: Dimensions.width15,
                      //           ),
                      //           width: Dimensions.screenwidth / 4 * 1.8,
                      //           decoration: const BoxDecoration(
                      //               border: Border(
                      //             right: BorderSide(
                      //               width: 1,
                      //               color: Color.fromARGB(255, 134, 134, 135),
                      //             ),
                      //           )),
                      //           child: Text(
                      //             "ค้นหาสินค้า 7Delivery",
                      //             style: TextStyle(
                      //               fontSize: Dimensions.font16,
                      //             ),
                      //           ),
                      //         ),
                      //         AppIcon(
                      //           size: Dimensions.width20,
                      //           icon: Icons.qr_code_scanner_outlined,
                      //           iconSize: Dimensions.iconSize24,
                      //         ),
                      //       ]),
                      // ),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.all(Dimensions.width10 * 1.1),
                          // width: Dimensions.screenwidth / 2 ,
                          decoration: const BoxDecoration(
                              color: GlobalVariable.backgroundColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.center,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: Dimensions.width20,
                                    height: Dimensions.width20,
                                    child: Image.asset(
                                        "assets/icons/search-interface-symbol.png")),
                                // AppIcon(
                                //   size: Dimensions.width20,
                                //   icon: Icons.search_outlined,
                                //   iconSize: Dimensions.iconSize24,
                                // ),
                                SizedBox(
                                  width: Dimensions.width10,
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                      right: Dimensions.width15,
                                    ),
                                    width:
                                        Dimensions.screenwidth / 4 * 1.8,
                                    decoration: const BoxDecoration(
                                        border: Border(
                                      right: BorderSide(
                                        width: 1,
                                        color: Color.fromARGB(
                                            255, 134, 134, 135),
                                      ),
                                    )),
                                    child: Text(
                                      "ค้นหาสินค้า 7Delivery",
                                      style: TextStyle(
                                        fontSize: Dimensions.font12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.width10,
                                ),
                                SizedBox(
                                    width: Dimensions.width20,
                                    height: Dimensions.width20,
                                    // padding: EdgeInsets.only(
                                    //   right: Dimensions.width15,left: Dimensions.width15),
                                    child: Image.asset(
                                        "assets/icons/scan.png")),
                              ]),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.width5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: GlobalVariable.greyBackgroundCOlor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: AppIcon(
                          size: Dimensions.width20 * 2.2,
                          icon: Icons.message_outlined,
                          backgroundColor: GlobalVariable.backgroundColor,
                          iconSize: Dimensions.iconSize24,
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.width5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: GlobalVariable.greyBackgroundCOlor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: AppIcon(
                          size: Dimensions.width20 * 2.2,
                          icon: Icons.account_circle_outlined,
                          backgroundColor: GlobalVariable.backgroundColor,
                          iconSize: Dimensions.iconSize24,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Positioned(
              top: Dimensions.height20 * 13.1,
              left: Dimensions.width5,
              right: Dimensions.width5,
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: SizedBox(
                      width:
                          (Dimensions.screenwidth - Dimensions.width5) /
                              2.1,
                      height: Dimensions.height45 * 1.9,
                      child: Card(
                        elevation: 8.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(Dimensions.width10),
                              child: Container(
                                width: Dimensions.height45 + 10,
                                height: Dimensions.height45 + 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: GlobalVariable.iconDelivery,
                                ),
                                child: AppIcon(
                                  // backgroundColor:
                                  icon: Icons.delivery_dining_outlined,
                                  iconSize: Dimensions.font26,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "7 Delivery",
                                  style: TextStyle(
                                    fontSize: Dimensions.font12,
                                    fontWeight: FontWeight.w600,
                                    color: GlobalVariable.iconDelivery,
                                  ),
                                ),
                                Text(
                                  "จัดส่งทันที",
                                  style: TextStyle(
                                    fontSize: Dimensions.font10,
                                    fontWeight: FontWeight.w400,
                                    // color: Color.fromARGB(221, 86, 85, 85),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width:
                          (Dimensions.screenwidth - Dimensions.width5) /
                              2.1,
                      height: Dimensions.height45 * 1.9,
                      child: Card(
                        elevation: 8.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(Dimensions.width10),
                              child: Container(
                                width: Dimensions.height45 + 10,
                                height: Dimensions.height45 + 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color.fromARGB(
                                      221, 110, 75, 131),
                                ),
                                child: Image.asset(
                                    "assets/icons/payment.png"),
                                // child: AppIcon(
                                //   icon: Icons.local_shipping_outlined,
                                //   iconSize: Dimensions.font26,
                                // ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ALL ONLINE",
                                  style: TextStyle(
                                    fontSize: Dimensions.font12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromARGB(
                                        221, 110, 75, 131),
                                  ),
                                ),
                                Text(
                                  "ช็อปห้างใกล้บ้าน",
                                  style: TextStyle(
                                    fontSize: Dimensions.font10,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(
                                        221, 86, 85, 85),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
          SizedBox(
            height: Dimensions.height15,
          ),
          Container(
              padding: EdgeInsets.all(Dimensions.width15),
              height: Dimensions.height120,
              width: Dimensions.screenwidth,
              child: Wrap(
                direction: Axis.horizontal,
                children: List.generate(listItem.length, (int index) {
                  return SizedBox(
                    width: Dimensions.width45,
                    child: Column(
                      children: [
                        Text(listItem[index]),
                        AppIcon(icon: Icons.access_alarm)
                      ],
                    ),
                  );
                }),
              )),
        ],
      ),
    );
  }
}
