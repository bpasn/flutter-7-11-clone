// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import '../constance/dimention.dart';
// import '../constance/global_constance.dart';

// class HeaderWidget extends StatelessWidget {
//   const HeaderWidget({
//     super.key,
//     required GlobalKey<ScaffoldState> scaffoldKey,
//     required this.images,
//     required this.activeIndex,
//   }) : _scaffoldKey = scaffoldKey;

//   final GlobalKey<ScaffoldState> _scaffoldKey;
//   final List<String> images;
//   final int activeIndex;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         key: _scaffoldKey,
//         body: SizedBox(
//           height: Get.context!.height,
//           // width: Get.context!.width,
//           child: Stack(
//             children: [
//               SizedBox(
//                 height: Dimensions.height300,
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       child: SizedBox(
//                         child: CarouselSlider.builder(
//                           itemCount: images.length,
//                           itemBuilder: (_, index, realindex) {
//                             final urlimage = images[index];
//                             return Image.network(
//                               urlimage,
//                               fit: BoxFit.fill,
//                               width: 1000.0,
//                             );
//                           },
//                           options: CarouselOptions(
//                             viewportFraction: 1.0,
//                             height: Dimensions.height300,
//                             enlargeCenterPage: false,
//                             initialPage: 0,
//                             autoPlay: true,
//                             // onPageChanged: (index, reason) {
//                             //   setState(() {
//                             //     activeIndex = index;
//                             //   });
//                             // },
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       alignment: Alignment.centerRight,
//                       margin: EdgeInsets.only(
//                           right: Dimensions.width20,
//                           top: Dimensions.height20 *5
//                           ),
//                       height: Dimensions.height300,
//                       child: AnimatedSmoothIndicator(
//                         activeIndex: activeIndex,
//                         count: images.length,
//                         effect:  const ExpandingDotsEffect(
//                             dotWidth: 10,
//                             dotHeight: 3,
//                             strokeWidth: 1,
//                             expansionFactor: 1.2,
//                             activeDotColor:
//                                 GlobalVariable.secondaryColor),
//                       ),
//                     ),
//                     SizedBox(
//                       height: Dimensions.height300,
//                       width: double.infinity,
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                             left: Dimensions.height20,
//                             right: Dimensions.height20,
//                             top: 60),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment:
//                               MainAxisAlignment.spaceAround,
//                           children: [
//                             Container(
//                               width: Dimensions.height10 * 25,
//                               padding: EdgeInsets.all(Dimensions.width10),
//                               decoration: const BoxDecoration(
//                                   color: GlobalVariable.backgroundColor,
//                                   borderRadius: BorderRadius.all(
//                                       Radius.circular(10))),
//                               child: Row(
//                                 crossAxisAlignment:
//                                     CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   const SizedBox(
//                                     width: 22,
//                                     child: Icon(
//                                       Icons.search,
//                                       size: 16,
//                                     ),
//                                   ),
//                                   Container(
//                                     width: 160,
//                                     padding:
//                                         const EdgeInsets.only(right: 20),
//                                     decoration: const BoxDecoration(
//                                       border: Border(
//                                         right: BorderSide(
//                                           width: 1,
//                                           color: Color.fromARGB(
//                                               255, 134, 134, 135),
//                                         ),
//                                       ),
//                                     ),
//                                     child: const Text(
//                                       "ค้นหาสินค้า 7Delivery",
//                                       style: TextStyle(fontSize: 10),
//                                     ),
//                                   ),
//                                   Container(
//                                     padding:
//                                         const EdgeInsets.only(left: 10),
//                                     child: const Icon(
//                                       Icons.qr_code_scanner_sharp,
//                                       size: 16,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               width: 35,
//                               height: 35,
//                               alignment: Alignment.center,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: GlobalVariable.backgroundColor,
//                               ),
//                               child: Icon(
//                                 Icons.message_outlined,
//                                 size: Dimensions.font20,
//                               ),
//                             ),
//                             Container(
//                               alignment: Alignment.center,
//                               height: 35,
//                               width: 35,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: GlobalVariable.backgroundColor,
//                               ),
//                               child: Icon(Icons.account_circle_outlined,
//                                   color: Colors.black,
//                                   size: Dimensions.font20),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 // width: Get.context!.width,
//                 top: Dimensions.height20 * 13.6,
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     left: Dimensions.width15,
//                     right: Dimensions.width15,
//                     top: Dimensions.height10,
//                     bottom: Dimensions.height10,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox(
//                         width: Dimensions.width20 * 9,
//                         height: Dimensions.height20 * 4,
//                         child: Card(
//                           elevation: 8.0,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                   left: Dimensions.width15,
//                                   right: Dimensions.width15,
//                                   top: Dimensions.height10,
//                                   bottom: Dimensions.height10,
//                                 ),
//                                 child: Container(
//                                   width: 35,
//                                   height: 35,
//                                   alignment: Alignment.center,
//                                   decoration: const BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     color: GlobalVariable.primary,
//                                   ),
//                                   child: Icon(
//                                     Icons.motorcycle_outlined,
//                                     size: Dimensions.font20,
//                                   ),
//                                 ),
//                               ),
//                               Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.center,
//                                 crossAxisAlignment:
//                                     CrossAxisAlignment.start,
//                                 children: const [
//                                   Text(
//                                     "7 Delivery",
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w600,
//                                         color: GlobalVariable.pinkColor),
//                                   ),
//                                   Text(
//                                     "จัดส่งทันที",
//                                     style: TextStyle(
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.w400,
//                                         color: Color.fromARGB(
//                                             221, 86, 85, 85)),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: Dimensions.width5,
//                       ),
//                       SizedBox(
//                         width: Dimensions.width20 * 9,
//                         height: Dimensions.height20 * 4,
//                         child: Card(
//                           elevation: 8.0,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                   left: Dimensions.width15,
//                                   right: Dimensions.width15,
//                                   top: Dimensions.height10,
//                                   bottom: Dimensions.height10,
//                                 ),
//                                 child: Container(
//                                   width: 35,
//                                   height: 35,
//                                   alignment: Alignment.center,
//                                   decoration: const BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     color: GlobalVariable.primary,
//                                   ),
//                                   child: Icon(
//                                     Icons.local_shipping_outlined,
//                                     size: Dimensions.font20,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 child: Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.center,
//                                   crossAxisAlignment:
//                                       CrossAxisAlignment.start,
//                                   children: const [
//                                     Text(
//                                       "ALL ONLINE",
//                                       style: TextStyle(
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.w600,
//                                           color: Color.fromARGB(
//                                               221, 110, 75, 131)),
//                                     ),
//                                     Text(
//                                       "ช็อปห้างใกล้บ้าน",
//                                       style: TextStyle(
//                                           fontSize: 10,
//                                           fontWeight: FontWeight.w400,
//                                           color: Color.fromARGB(
//                                               221, 86, 85, 85)),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
