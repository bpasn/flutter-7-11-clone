import 'package:flutter/material.dart';

import '../../../constance/dimention.dart';
import '../../../widget/text_widget.dart';

class CardEvents extends StatelessWidget {
  String title;
  String subText;
  CardEvents({super.key, required this.title, this.subText = 'see more >'});

  final List<String> promotion = [
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/136f900b43844d18bac2a575064b676c.jpg",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/65f8429b9363498f95eacc47d6c90ac4.jpg",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/57922740b8c54681a3a27f9ea3d3ee07.jpg",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/99e85e7a5736474c8fdb28686294d766.jpg",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/ad1661d5b44c4d04834ebf2818001518.jpg",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/e257bdfd8c2c4d4897b73c00a75af164.jpg",
    "https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/14081b5e612a478f8686ad34bd215890.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height220 - 20,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width15,
                  right: Dimensions.width15,
                  bottom: Dimensions.height15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(
                    size: Dimensions.font16+1,
                    text: title,
                  ),
                  SmallText(
                    text: subText,
                  )
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: promotion.length,
                    itemBuilder: (_, int index) {
                      return _buildCard(promotion[index]);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildCard(String url) {
    return Padding(
      padding: EdgeInsets.only(left: Dimensions.width15),
      child: SizedBox(
        width: Dimensions.width350 - 45,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            url,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
