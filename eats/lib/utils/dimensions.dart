import 'package:get/get.dart';

class Dimensions {
  //getX methdod height and weight
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
// dynamic view
  static double pageView = screenHeight / 2.44;
  static double pageViewContainer = screenHeight / 3.55;
  static double pageViewTextContainer = screenHeight / 6.26;
//dynamic height padding and margin
  static double height10 = screenHeight / 78.1;
  static double height15 = screenHeight / 52.06;
  static double height20 = screenHeight / 38.6;
  static double height30 = screenHeight / 26.03;
  static double height45 = screenHeight / 17.35;
//dynamic width padding and margin
  static double width10 = screenHeight / 78.1;
  static double width20 = screenHeight / 38.6;
  static double width30 = screenHeight / 26.03;
//dynamic font
  static double font16 = screenHeight / 49.43;
  static double font20 = screenHeight / 38.6;
  static double font26 = screenHeight / 30.42;
//dynamic radius
  static double radius15 = screenHeight / 52.06;
  static double radius20 = screenHeight / 38.6;
  static double radius30 = screenHeight / 26.03;
//icon size
  static double iconSize24 = screenHeight / 32.54;
  static double iconSize16 = screenHeight / 48.81;
//list view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTxtContSize = screenWidth / 3.9;
//popular food
  static double popularFoodImgSize = screenHeight / 2.41;

//bottom height
  static double bottomHeightBar = screenHeight / 6.08;
}
