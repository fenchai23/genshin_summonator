import 'dart:io';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_model.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

class BannerInfoController extends GetxController {
  Map<String, FileSystemEntity> characterBanners = {};
  int bannerIndex = 0;
  Map<String, dynamic> currentBannerPool = {};
  List<String> fourStarEventCharPool = [];

  @override
  void onInit() async {
    final List<FileSystemEntity> fileList =
        await Directory('assets/images/banners/event/').list().toList();

    fileList.reversed.forEach((e) {
      characterBanners[basename(e.path)] = e;
    });

    currentBannerPool = BannerInfoModel
        .eventCharacters[characterBanners.keys.elementAt(bannerIndex)];

    // print(bannerInfo);

    update();

    super.onInit();
  }

  void nextBanner() {
    final int next = bannerIndex - 1;
    if ((next >= 0)) bannerIndex = bannerIndex - 1;

    currentBannerPool = BannerInfoModel
        .eventCharacters[characterBanners.keys.elementAt(bannerIndex)];

    removeRateUpCharFromPool();

    update();
  }

  void prevBanner() {
    final int next = bannerIndex + 1;
    // print(
    //     'current index: $bannerIndex\nnext index: ${bannerIndex + 1} / ${characterBanners.length}');
    if (!(next >= characterBanners.length)) bannerIndex = bannerIndex + 1;

    currentBannerPool = BannerInfoModel
        .eventCharacters[characterBanners.keys.elementAt(bannerIndex)];

    removeRateUpCharFromPool();

    update();
  }

  void setBannerIndex(int index) {
    bannerIndex = index;

    currentBannerPool = BannerInfoModel
        .eventCharacters[characterBanners.keys.elementAt(bannerIndex)];

    update();
  }

  void removeRateUpCharFromPool() {
    final List<dynamic> fourStarCharPool =
        Get.find<SummonHistoryController>().eventPool.fourStarCharacterPool;

    fourStarCharPool.forEach((e) {
      if (!currentBannerPool['4'].contains(e)) fourStarEventCharPool.add(e);
    });
  }
}
