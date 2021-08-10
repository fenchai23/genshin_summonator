import 'dart:io';
import 'package:get/get.dart';
import 'package:path/path.dart';

class BannerInfoController extends GetxController {
  Map<String, FileSystemEntity> characterBanners = {};
  var bannerIndex = 0.obs;

  @override
  void onInit() async {
    final List<FileSystemEntity> fileList =
        await Directory('assets/images/banners/characters/').list().toList();

    fileList.forEach((e) {
      characterBanners[basename(e.path)] = e;
    });

    update();

    super.onInit();
  }

  void nextBanner() {
    final int next = bannerIndex.value + 1;
    if (!(next > characterBanners.length))
      bannerIndex.value = bannerIndex.value + 1;
  }

  void prevBanner() {
    final int next = bannerIndex.value + 1;
    if (!(next > 0)) bannerIndex.value = bannerIndex.value - 1;
  }
}
