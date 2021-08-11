import 'dart:convert';
import 'dart:io';
import 'package:genshin_summonator/models/SummonPool.dart';
import 'package:get/get.dart';

class SummonHistoryController extends GetxController {
  late EventPool eventPool;
  Map<int, String> summoned = {};
  int fourStarPityCount = 0;
  int fiveStarPityCount = 0;

  @override
  Future<void> onInit() async {
    await loadPoolData();

    super.onInit();
  }

  void summon(int amount) {
    // logic here to increase pity and add list to summoned

    for (var i = 0; i <= amount; i++) {
      print(i);
      if (i > 100) break;
    }
    update();
  }

  Future<void> loadPoolData() async {
    try {
      final rawBannerData =
          await File("assets/genshin/index/banners.json").readAsString();

      final bannerData = json.decode(rawBannerData);

      final List<dynamic> threeStarWeaponPool =
          bannerData['standard_pool']['weapons']['3'];
      final List<dynamic> fourStarWeaponPool =
          bannerData['standard_pool']['weapons']['4'];
      final List<dynamic> fourStarCharPool =
          bannerData['standard_pool']['characters']['4'];
      final List<dynamic> fiveStarCharPool =
          bannerData['standard_pool']['characters']['5'];

      final characterImagesData = json.decode(
          await File("assets/genshin/image/characters.json").readAsString());

      final weaponImagesData = json.decode(
          await File("assets/genshin/image/weapons.json").readAsString());

      Map<dynamic, dynamic> imagesData = {};

      imagesData.addAll(characterImagesData);
      imagesData.addAll(weaponImagesData);

      eventPool = EventPool(fiveStarCharPool, fourStarCharPool,
          threeStarWeaponPool, fourStarWeaponPool, imagesData);

      Map<int, String> tempSummoned = {};

      fourStarWeaponPool.asMap().forEach((key, value) {
        tempSummoned[key] = value;
      });

      fourStarCharPool.asMap().forEach((key, value) {
        tempSummoned[key] = value;
      });

      // reverse summons
      final List<int> reversedKeys =
          tempSummoned.keys.toList().reversed.toList();

      reversedKeys.forEach((int e) {
        summoned[e] =
            tempSummoned[e]!; // ! means I can guarantee this wont be null
      });

      update();
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
