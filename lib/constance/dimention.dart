import 'package:get/get.dart';

class Dimensions {
  
  static double screenHeight = Get.context!.height; //ความสูงของDevice
  static double screenwidth = Get.context!.width; //ความกว้างของDevice
  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  // ต้องการความสูงของ10 เลยเอา ความสูงของDevice มา/10 ได้ออกมาเป็น 84.4
  // หาค่าความสูงของdevice screenHeight / ความสูงที่ต้องการ 
  // exp : ความสูง 300 ของ screenHeight: ,มีค่าเท่ากับ 844 , ความสูงของ device คือ 844 / 300 = 2.81
  // using 844.0 / 2.81
  static double height2 = screenHeight / 442;
  static double height3 = screenHeight / 281.3;
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;
  static double height120 = screenHeight / 7.03;
  static double height220 = screenHeight / 3.87;
  static double height250 = screenHeight / 3.51;
  static double height270 = screenHeight / 3.12;
  static double height275 = screenHeight / 3.06;
  static double height300 = screenHeight / 2.81;

  //dynamic width margin padding
  static double width5 = screenHeight / 133.5;
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.76;
  static double width180 = screenwidth / 4.68;
  static double width350 = screenwidth / 1.12;

//dynamic font
  static double font10 = screenHeight / 85.3;
  static double font12 = screenHeight / 70.3;
  static double font16 = screenHeight / 56.73;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;

//dynamic radius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;

  // ignore: non_constant_identifier_names
  static double ListViewImgSize = screenwidth / 3.25;
  // ignore: non_constant_identifier_names
  static double ListViewTextSize = screenwidth / 3.9;

  // ignore: non_constant_identifier_names
  static double PopularFoodImaSize = screenHeight / 2.41;

  static double buttonHeightBar = screenHeight / 7.03;
}
