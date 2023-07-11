import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.67;
  static double pageViewContainer = screenHeight / 3.89;
  static double pageViewTextContainer = screenHeight / 7.14;
  //dynamic height padding and margin
  static double height10 = screenHeight / 85.7;
  static double height15 = screenHeight / 57.13;
  static double height20 = screenHeight / 42.8;
  static double height30 = screenHeight / 28.56;
  static double height45 = screenHeight / 19.04;
  //dynamic width padding and margin
  static double width10 = screenHeight / 85.7;
  static double width15 = screenHeight / 57.13;
  static double width20 = screenHeight / 42.8;
  static double width30 = screenHeight / 28.56;
  static double width45 = screenHeight / 19.04;

  static double font16 = screenHeight / 53.56;
  static double font20 = screenHeight / 42.8;
  static double font26 = screenHeight / 32.96;

  static double radius15 = screenHeight / 57.13;
  static double radius20 = screenHeight / 42.8;
  static double radius30 = screenHeight / 28.56;

  //icon Size
  static double iconSize24 = screenHeight / 35.70;
  static double iconSize16 = screenHeight / 53.56;

  //list view size
  static double listViewImgSize = screenWidth / 3.26;
  static double listViewTextContSize = screenWidth / 3.92;

  //popular food
  static double popularFoodImgSize = screenHeight / 2.44;

  //bottom height
  static double bottomHeightBar = screenHeight / 7.14;

  //splash screen dimension
  static double splashImg = screenHeight / 3.43;
}
