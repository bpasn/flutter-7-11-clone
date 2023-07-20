import 'package:eleven_clone/constance/global_constance.dart';
import 'package:eleven_clone/screen/home/widget/menu_items.dart';
import 'package:eleven_clone/screen/home/widget/card_event_promotion_widget.dart';
import 'package:flutter/material.dart';
import '../../constance/dimention.dart';
import '../../widget/text_widget.dart';
import './widget/header_widget.dart';
import 'model/menu_item_model.dart';
import 'widget/branner_slice_widget.dart';
import 'widget/cardinfo_widget.dart';
import 'widget/menu_item_account.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TrackingScrollController _scrollController = TrackingScrollController();
  ScrollController scrollControllerIndicator = ScrollController();
  @override
  void initState() {
    scrollControllerIndicator = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollControllerIndicator.dispose();
    super.dispose();
  }

  final List<MenuItem> listMenu = MenuViewItem().getMenuItem();
  final List<MenuItem> listMenuAccount = MenuViewItem().getMenuItemAction();
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
    return Scaffold(
      backgroundColor: GlobalVariable.greyBackgroundCOlor,
      body: Stack(children: [
        SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              //session banner + CardInfo
              Stack(
                alignment: Alignment.bottomCenter,
                children: const [
                  BrannerSlice(),
                  CardInfo(),
                ],
              ),

              SizedBox(
                height: Dimensions.height20,
              ),

              //menuitems
              Menuitems(
                listItem: listMenu,
                indicator: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: Dimensions.height20,
                  mainAxisSpacing: Dimensions.width10,
                  crossAxisCount: 2,
                  // childAspectRatio:0.8
                ),
                height: Dimensions.height120 + 60,
                scrollController: scrollControllerIndicator,
              ),

              SizedBox(
                height: Dimensions.height20,
              ),

              CardEvents(
                title: "Promotions and Privilege",
              ),

              SizedBox(
                height: Dimensions.height20,
              ),

              const MenuItemAccount(),

              SizedBox(
                height: Dimensions.height20,
              ),

              SizedBox(
                height: Dimensions.height220 + 10,
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
                              size: Dimensions.font16 + 1,
                              text: "Recommend for ALL member",
                            ),
                            SmallText(
                              text: "see more >",
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: promotion.length,
                          itemBuilder: (_, int index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: Dimensions.width10,
                                  bottom: Dimensions.height10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey[300]!,
                                      blurRadius: Dimensions.width5 - 4,
                                      offset: Offset(0, Dimensions.width5 - 4),
                                    ),
                                  ],
                                ),
                                width: Dimensions.width180 + 60,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Image.network(
                                          promotion[index],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        color: GlobalVariable.backgroundColor,
                                        padding: const EdgeInsets.all(10),
                                        child: SmallText(
                                          size: Dimensions.font12 + 2,
                                          text: "ศุกร์แลกฟรี วันเดียวเท่านั้น",
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
                  ),
                ),
              ),

              SizedBox(
                height: Dimensions.height20,
              ),
              CardEvents(
                title: 'Products and Other services',
              ),

              SizedBox(
                height: Dimensions.height20,
              ),

              CardEvents(
                title: 'Games and Activity',
              ),
            ],
          ),
        ),
        HeaderWidget(
          scrollController: _scrollController,
        )
      ]),
    );
  }
}
