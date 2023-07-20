import 'package:eleven_clone/constance/dimention.dart';
import 'package:eleven_clone/constance/global_constance.dart';
import 'package:eleven_clone/widget/text_widget.dart';
import 'package:flutter/material.dart';

class MenuItemAccount extends StatelessWidget {
  const MenuItemAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // image: const DecorationImage(
        //     image: NetworkImage("https://7elevenweb.s3.ap-southeast-1.amazonaws.com/banner/db64fb3850a5493980976032371011ca.jpg"),
        //     fit: BoxFit.cover,
        //   ),
        color: GlobalVariable.greyBackgroundCOlor,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: Dimensions.width5 - 4,
            offset: Offset(0, Dimensions.width5 - 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),

            alignment: Alignment.centerRight,
            child: SmallText(text: "ดูทั้งหมด >"),
          ),
          SizedBox(
            height: Dimensions.height120 - 20,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, 
                  mainAxisSpacing: 0, 
                  childAspectRatio: 1.3),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: GlobalVariable.selectedNavBarColor,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            width: Dimensions.width45,
                            height: Dimensions.height45,
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                "assets/icons/7-eleven.png",
                                fit: BoxFit.fill,
                                // height: double.infinity,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height10 - 5,
                          ),
                          SmallText(text: "item.title")
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
