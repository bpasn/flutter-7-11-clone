// ignore_for_file: must_be_immutable

import 'package:eleven_clone/constance/global_constance.dart';
import 'package:eleven_clone/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:scroll_indicator/scroll_indicator.dart';

import '../../../constance/dimention.dart';
import '../model/menu_item_model.dart';

class Menuitems extends StatelessWidget {
  final SliverGridDelegate gridDelegate;
  final double height;
  List<MenuItem> listItem;
  ScrollController scrollController;
  bool indicator;
  Menuitems({
    super.key,
    this.indicator = false,
    required this.listItem,
    required this.scrollController,
    required this.height,
    required this.gridDelegate,
  });

  final ButtonStyle flatButton = TextButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: Colors.black12)),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height,
          child: GridView.builder(
            padding: EdgeInsets.only(left: Dimensions.width15),
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            gridDelegate: gridDelegate,
            itemCount: listItem.length,
            itemBuilder: (BuildContext context, int index) {
              MenuItem item = listItem[index];
              return _buildMenuItem(item);
            },
          ),
        ),
        indicator
            ? ScrollIndicator(
                scrollController: scrollController,
                width: Dimensions.width20,
                height: Dimensions.height10 - 5,
                indicatorWidth: Dimensions.width20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                indicatorDecoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10)),
              )
            : const SizedBox(),
      ],
    );
  }

  Widget _buildMenuItem(MenuItem item) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: item.color ?? GlobalVariable.primary,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: Dimensions.width5 - 1,
                offset: Offset(0, Dimensions.width5 - 1),
              ),
            ],
          ),
          width: Dimensions.width45,
          height: Dimensions.height45,
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {},
            child: Image.asset(
              item.urlImage,
              fit: BoxFit.fill,
              // height: double.infinity,
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.height10 - 5,
        ),
        SmallText(text: item.title ?? '')
      ],
    );
  }
}
