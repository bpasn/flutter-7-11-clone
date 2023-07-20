// ignore_for_file: sized_box_for_whitespace

import 'package:eleven_clone/constance/dimention.dart';
import 'package:eleven_clone/constance/global_constance.dart';
import 'package:eleven_clone/screen/home/home_screen.dart';
import 'package:eleven_clone/widget/text_widget.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({super.key});

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  OutlineInputBorder border = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.transparent,
      width: 0,
    ),
    borderRadius: BorderRadius.circular(8),
  );
  TextEditingController textSearchController = TextEditingController();
  final List<String> searchTxt = [
    "น้ำแข็งยูนิต",
    "เอนเนอร์จี้",
    "กรรไกรตัดเล็บ",
    "พายข้าวโพด",
    "คารามูโจ้สตรองแผ่นหยักรสซุปเปอร์ฮอตชิลลี่",
    "มาม่าเจซอง รสเห็ดหอม",
    "น้ำแข็งเปล่า",
    "อกไก่นุ่ม",
    "ไมโลแม็กม่า",
    "Pน้ำยาล้างจานไลฟอนืเอฟ"
  ];
  bool textEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Back arrow
                    Container(
                      alignment: Alignment.centerLeft,
                      width: Dimensions.width45,
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamedAndRemoveUntil(
                            context, "/home", (Route<dynamic> route) => false),
                        child: SizedBox(
                          width: Dimensions.width45,
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: GlobalVariable.unselectedNavBarColor,
                          ),
                        ),
                      ),
                    ),
                    // Search TextField
                    Expanded(
                      child: Container(
                        height: Dimensions.height45,
                        child: TextField(
                          controller: textSearchController,
                          autofocus: true,
                          onChanged: (value) {
                            // ignore: avoid_print
                            print(value);
                            setState(() {
                              textEmpty = value.isEmpty;
                            });
                          },
                          decoration: InputDecoration(
                            enabled: true,
                            hintText: "Search",
                            hintStyle: TextStyle(fontSize: Dimensions.font12),
                            isDense: true,
                            contentPadding: const EdgeInsets.all(4),
                            enabledBorder: border,
                            focusedBorder: border,
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(
                              Icons.search,
                              color: GlobalVariable.primary,
                            ),
                            suffixText: textSearchController.text.isEmpty
                                ? "Scaner"
                                : "",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                if (textSearchController.text.isNotEmpty) {
                                  textSearchController.clear();
                                  return;
                                }
                                print("Show Icon Scaner");
                              },
                              child: Icon(
                                textSearchController.text.isEmpty
                                    ? Icons.qr_code_scanner
                                    : Icons.cancel_rounded,
                                color: textSearchController.text.isEmpty
                                    ? GlobalVariable.primary
                                    : GlobalVariable.unselectedNavBarColor,
                              ),
                            ),
                            border: border,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                SizedBox(
                  height: Dimensions.height20,
                  width: double.infinity,
                  child: BigText(
                      color: Colors.grey[600],
                      size: Dimensions.font16,
                      text: "History search"),
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: _buildSearchTextHistory(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildSearchTextHistory() {
    return searchTxt
        .map(
          (String text) => GestureDetector(
            onTap: (){
              setState(() {
              textSearchController.text = text;
              textSearchController.addListener(() {
                setState(() {});
              });
            });
            },
            child: Container(
                padding: EdgeInsets.all(Dimensions.height15),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(228, 246, 236, 1),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: BigText(
                    text: text,
                    size: Dimensions.font16,
                    fontWeight: FontWeight.w500)),
          ),
        )
        .toList();
  }
}
