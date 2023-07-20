import 'package:flutter/material.dart';

import '../../../constance/dimention.dart';
import '../../../constance/global_constance.dart';
import '../../../widget/app_icon.dart';

class HeaderWidget extends StatefulWidget {
  final TrackingScrollController scrollController;
  const HeaderWidget({super.key, required this.scrollController});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  Color backgroundColorSearch = Colors.white;
  Color backgroundColor = Colors.transparent;
  double _opacity = 0.0;
  final double _opacityMax = 0.01;
  double _ofset = 0.0;

  @override
  void initState() {
    widget.scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: Dimensions.height10 + 5),
      color: backgroundColor,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(
              left: Dimensions.width20, right: Dimensions.width20, top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //BoxSearch
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    left: Dimensions.width10 - 3,
                    right: Dimensions.width10 - 3,
                    bottom: Dimensions.width10,
                    top: Dimensions.width10 - 3,
                  ),
                  // width: Dimensions.screenwidth / 2 ,
                  decoration: BoxDecoration(
                      color: GlobalVariable.backgroundColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: _opacity >= 0.12
                              ? Colors.grey[400]!
                              : Colors.transparent,
                          blurRadius: Dimensions.width5 - 1,
                          offset: Offset(0, Dimensions.width5 - 1),
                        ),
                      ]),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimensions.width10),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => {
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  '/search-appbar',
                                  (route){
                                    return false;
                                  },
                                ),
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: Dimensions.width20,
                                    height: Dimensions.width20,
                                    child: Image.asset(
                                      "assets/icons/search-interface-symbol.png",
                                    ),
                                  ),
                                  SizedBox(
                                    width: Dimensions.width10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        right: Dimensions.width15,
                                      ),
                                      width: Dimensions.screenwidth / 4 * 1.8,
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
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.width20,
                          ),
                          GestureDetector(
                            onTap: () => {print("QE SCAN")},
                            child: SizedBox(
                                width: Dimensions.width20,
                                height: Dimensions.width20,
                                // padding: EdgeInsets.only(
                                //   right: Dimensions.width15,left: Dimensions.width15),
                                child: Image.asset("assets/icons/scan.png")),
                          )
                        ]),
                  ),
                ),
              ),
              SizedBox(
                width: Dimensions.width15,
              ),

              //Icon Chat
              Container(
                decoration: BoxDecoration(
                    color: GlobalVariable.backgroundColor,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: _opacity >= 0.12
                            ? Colors.grey[400]!
                            : Colors.transparent,
                        blurRadius: Dimensions.width5 - 1,
                        offset: Offset(0, Dimensions.width5 - 1),
                      ),
                    ]),
                child: AppIcon(
                  size: Dimensions.width20 * 1.8,
                  icon: Icons.message_outlined,
                  backgroundColor: GlobalVariable.backgroundColor,
                  iconSize: Dimensions.iconSize16,
                ),
              ),
              SizedBox(
                width: Dimensions.width15,
              ),

              //Icon Account
              Container(
                decoration: BoxDecoration(
                    color: GlobalVariable.backgroundColor,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: _opacity >= 0.12
                            ? Colors.grey[400]!
                            : Colors.transparent,
                        blurRadius: Dimensions.width5 - 1,
                        offset: Offset(0, Dimensions.width5 - 1),
                      ),
                    ]),
                child: AppIcon(
                  size: Dimensions.width20 * 1.8,
                  icon: Icons.account_circle_outlined,
                  backgroundColor: GlobalVariable.backgroundColor,
                  iconSize: Dimensions.iconSize16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onScroll() {
    final scrollOf = widget.scrollController.offset;
    if (scrollOf >= _ofset && scrollOf > 5) {
      //up
      _opacity = double.parse((_opacity + _opacityMax).toStringAsFixed(2));

      if (_opacity >= 0.12) {
        _opacity = 1.0;
      }
    } else if (scrollOf < 60) {
      //down
      _opacity = double.parse((_opacity - _opacityMax).toStringAsFixed(2));

      if (_opacity <= 1.0) {
        _opacity = 0.0;
      }
    }
    setState(() {
      if (scrollOf <= 0) {
        backgroundColorSearch = Colors.white;
        _opacity = 0.0;
        _ofset = 0.0;
      } else {
        backgroundColorSearch = Colors.grey[200]!;
      }
      backgroundColor = Colors.white.withOpacity(_opacity);
    });
  }
}
