import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constance/dimention.dart';
import '../../../constance/global_constance.dart';

class BrannerSlice extends StatefulWidget {
  const BrannerSlice({
    super.key,
  });

  @override
  State<BrannerSlice> createState() => _BrannerSliceState();
}

class _BrannerSliceState extends State<BrannerSlice> {
  int activeIndex = 0;

  List<String> images = [
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/57922740b8c54681a3a27f9ea3d3ee07.jpg",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/e65bc48a59ed43a993cf14591b86ff52.png",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/136f900b43844d18bac2a575064b676c.jpg",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/b8f66328647d4c0897a11d55c2e52989.jpg",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/28a0bc139b464ac8bfcc20dfd09b3cd8.jpg",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/65f8429b9363498f95eacc47d6c90ac4.jpg",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/57922740b8c54681a3a27f9ea3d3ee07.jpg",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/86d54588374c4cdb920440f9c9dd141c.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      _buildBanner(),
      _buildIndicator(),
    ]);
  }

  Positioned _buildIndicator() {
    return Positioned(
      bottom: Dimensions.height45 * 2.1,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.centerRight,
        margin: EdgeInsets.only(
            right: Dimensions.width20, top: Dimensions.height20 * 10),
        // height: Dimensions.height120 * 2.52,
        child: AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: images.length,
          effect: const ExpandingDotsEffect(
              dotWidth: 10,
              dotHeight: 3,
              strokeWidth: 1,
              expansionFactor: 1.2,
              activeDotColor: GlobalVariable.secondaryColor),
        ),
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      margin: EdgeInsets.only(bottom: Dimensions.height45 *1.5),
      width: double.infinity,
      height: Dimensions.height250 - 20,
      child: CarouselSlider.builder(
        itemCount: images.length,
        itemBuilder: (_, index, realindex) {
          final urlimage = images[index];
          return Image.network(
            urlimage,
            fit: BoxFit.fill,
          );
        },
        options: CarouselOptions(
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          initialPage: 0,
          aspectRatio: 1.183,
          autoPlay: true,
          autoPlayInterval:const Duration(seconds: 10),
          onPageChanged: (int index, CarouselPageChangedReason reason) {
            setState(() {
              activeIndex = index;
            });
          },
        ),
      ),
    );
  }
}
