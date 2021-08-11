import 'dart:io';
import 'package:get/get.dart';
import 'package:path/path.dart';

class BannerInfoController extends GetxController {
  Map<String, FileSystemEntity> characterBanners = {};
  int bannerIndex = 0;

  @override
  void onInit() async {
    final List<FileSystemEntity> fileList =
        await Directory('assets/images/banners/characters/').list().toList();

    fileList.reversed.forEach((e) {
      characterBanners[basename(e.path)] = e;
    });

    update();

    super.onInit();
  }

  void nextBanner() {
    final int next = bannerIndex - 1;
    if ((next >= 0)) bannerIndex = bannerIndex - 1;

    update();
  }

  void prevBanner() {
    final int next = bannerIndex + 1;
    // print(
    //     'current index: $bannerIndex\nnext index: ${bannerIndex + 1} / ${characterBanners.length}');
    if (!(next >= characterBanners.length)) bannerIndex = bannerIndex + 1;

    update();
  }
}
