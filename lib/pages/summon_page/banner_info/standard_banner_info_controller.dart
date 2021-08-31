import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:genshin_summonator/models/SummonPool.dart';
import 'package:get/get.dart';

class StandardBannerInfoController extends GetxController {
  bool hasBannerPoolLoaded = false;
  FileSystemEntity stdBannerFile =
      File('assets/images/banners/standard/standard_banner.png');
  late StandardPool stdPool;

  @override
  Future<void> onInit() async {
    await loadStdEventData();

    hasBannerPoolLoaded = true;

    update();

    super.onInit();
  }

  Future<void> loadStdEventData() async {
    try {
      final rawBannerData =
          await rootBundle.loadString('assets/genshin/index/banners.json');

      final bannerData = json.decode(rawBannerData);

      final List<dynamic> threeStarWeaponPool =
          bannerData['standard_pool']['weapons']['3'];
      final List<dynamic> fourStarWeaponPool =
          bannerData['standard_pool']['weapons']['4'];
      final List<dynamic> fiveStarWeaponPool =
          bannerData['standard_pool']['weapons']['5'];
      final List<dynamic> fourStarCharPool =
          bannerData['standard_pool']['characters']['4'];
      final List<dynamic> fiveStarCharPool =
          bannerData['standard_pool']['characters']['5'];

      stdPool = StandardPool(
        fiveStarCharPool,
        fourStarCharPool,
        fiveStarWeaponPool,
        fourStarWeaponPool,
        threeStarWeaponPool,
      );
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
