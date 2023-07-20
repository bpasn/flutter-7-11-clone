import 'package:eleven_clone/constance/global_constance.dart';
import 'package:eleven_clone/widget/app_icon.dart';
import 'package:flutter/material.dart';

import '../../../constance/dimention.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              width: (Dimensions.screenwidth - Dimensions.width5) / 2.1,
              // height: Dimensions.height45 * 1.9,
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
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
                        child: Image.asset("assets/icons/deliverys.jpg",fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(width: Dimensions.width10,),
          Expanded(
            flex: 2,
            child: SizedBox(
              width: (Dimensions.screenwidth - Dimensions.width5) / 2.1,
              // height: Dimensions.height45 * 1.9,
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
                          color: const Color.fromARGB(221, 110, 75, 131),
                        ),
                        child: Image.asset("assets/icons/all-online.jpg",fit: BoxFit.cover),
                        // child: AppIcon(
                        //   icon: Icons.local_shipping_outlined,
                        //   iconSize: Dimensions.font26,
                        // ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ALL ONLINE",
                          style: TextStyle(
                            fontSize: Dimensions.font12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(221, 110, 75, 131),
                          ),
                        ),
                        Text(
                          "ช็อปห้างใกล้บ้าน",
                          style: TextStyle(
                            fontSize: Dimensions.font10,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(221, 86, 85, 85),
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
    );
  }
}
