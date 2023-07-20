import 'package:eleven_clone/constance/dimention.dart';
import 'package:eleven_clone/constance/global_constance.dart';
import 'package:eleven_clone/screen/home/model/menu_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridMenus extends StatelessWidget {
  ScrollController scrollController = ScrollController();
  GridMenus({super.key,required this.scrollController});
  
  final ButtonStyle flatButton = TextButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: Colors.black12)),
  );
  
  final List<MenuItem> listMenu = MenuViewItem().getMenuItem();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height250 - 30,
      child: GridView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemCount: listMenu.length,
        itemBuilder: (BuildContext context, int index) {
          MenuItem item = listMenu[index];
          return _buildMenuItem(item);
        },
      ),
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
                    offset: Offset(0, Dimensions.width5 - 1)),
              ]),
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
        Text(
          item.title ?? '',
          // style: TextStyle(),
          maxLines: 2,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
