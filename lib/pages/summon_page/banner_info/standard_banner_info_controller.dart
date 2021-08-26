import 'dart:convert';
import 'dart:io';
import 'package:genshin_summonator/models/SummonPool.dart';
import 'package:get/get.dart';

class CharacterBannerInfoController extends GetxController {
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
          await File("assets/genshin/index/banners.json").readAsString();

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

      final Map<dynamic, dynamic> nameMap = bannerData['namemap'];

      final characterImagesData = json.decode(
          await File("assets/genshin/image/characters.json").readAsString());

      final weaponImagesData = json.decode(
          await File("assets/genshin/image/weapons.json").readAsString());

      Map<dynamic, dynamic> imagesData = {};

      imagesData.addAll(characterImagesData);
      imagesData.addAll(weaponImagesData);

      stdPool = StandardPool(
          fiveStarCharPool,
          fourStarCharPool,
          fiveStarWeaponPool,
          fourStarWeaponPool,
          threeStarWeaponPool,
          nameMap,
          imagesData);
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
