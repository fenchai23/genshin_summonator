import 'package:get/get.dart';

class BannerInfoController extends GetxController {
  String currentBannerType = 'character';

  void switchBannerType(String type) {
    currentBannerType = type;
    update();
  }
}
