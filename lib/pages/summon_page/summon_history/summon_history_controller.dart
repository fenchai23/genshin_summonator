import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:genshin_summonator/models/SummonPool.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_model.dart';
import 'package:get/get.dart';

class SummonHistoryController extends GetxController {
  late EventPool eventPool;
  int fourStarPityCount = 0;
  int fiveStarPityCount = 0;
  bool firstTimePullingFourStar = true;
  bool firstTimePullingFiveStar = true;
  bool wasLastFourStarRateUp = false;
  bool wasLastFiveStarRateUp = false;
  List<SummonHistoryModel> summoned = [];
  double fourStarChance = (5.1 * 1000) / 100;
  // double fourStarChance = (61.1 * 1000) / 100;
  double fiveStarChance = (0.6 * 1000) / 100;
  double fiveStarSoftChance = (32.4 * 1000) / 100;

  @override
  Future<void> onInit() async {
    await loadPoolData();

    super.onInit();
  }

  void roll(int amount) {
    for (var i = 1; i <= amount; i++) {
      increasePity();
    }
  }

  void increasePity() {
    final Random rnd = Random();

    final int currRollCount = summoned.length;
    final int nextRollCount = (currRollCount + 1);

    if ((fiveStarPityCount + 1) == 90) {
      print('hit 5* hard pity');
      // hard pity lmao
      distributeFiveStar(nextRollCount, rnd);
      update();
      return;
    }

    if ((fourStarPityCount + 1) == 10) {
      print('hit 4* hard pity');
      // hard pity 4 star
      distributeFourStar(nextRollCount, rnd);
      update();
      return;
    }

    if ((fiveStarPityCount + 1) > 75) {
      print('entering soft pity realm');

      // entering soft pity realm
      int luck = rnd.nextInt(1000);

      if (luck >= 0 && luck <= fiveStarSoftChance) {
        print('won 5* on soft pity');
        distributeFiveStar(nextRollCount, rnd);
        update();
        return;
      } else if (luck >= 0 && luck <= fourStarChance) {
        print('won 4*');
        distributeFourStar(nextRollCount, rnd);
        update();
        return;
      } else {
        print('got 3*');
        distributeThreeStar(nextRollCount, rnd);
      }
    } else {
      int luck = rnd.nextInt(1000);
      if (luck >= 0 && luck <= fiveStarChance) {
        print('won 5* you are VERY lucky');
        distributeFiveStar(nextRollCount, rnd);
        update();
        return;
      } else if (luck >= 0 && luck <= fourStarChance) {
        print('won a 4* you are quite lucky');
        distributeFourStar(nextRollCount, rnd);
        update();
        return;
      } else {
        print('just another 3*');
        distributeThreeStar(nextRollCount, rnd);
      }

      update();
    }
  }

  void distributeThreeStar(nextRollCount, rnd) {
    summoned.add(SummonHistoryModel(nextRollCount,
        eventPool.threeStarWeaponPool[rnd.nextInt(12)], 'weapon', '3', false));
    fourStarPityCount++;
  }

  void distributeFourStar(nextRollCount, rnd) {
    if (wasLastFourStarRateUp || firstTimePullingFourStar) {
      bool win5050 = rnd.nextBool();
      if (win5050) {
        wonfourStar5050(nextRollCount, rnd);
        wasLastFourStarRateUp = true;
      } else {
        lostfourStar5050(nextRollCount, rnd);
        wasLastFourStarRateUp = false;
      }
      firstTimePullingFourStar = false;
    } else {
      wonfourStar5050(nextRollCount, rnd);
      wasLastFourStarRateUp = true;
    }
  }

  void distributeFiveStar(nextRollCount, rnd) {
    if (wasLastFiveStarRateUp || firstTimePullingFiveStar) {
      bool win5050 = rnd.nextBool();
      if (win5050) {
        wonfiveStar5050(nextRollCount);
        wasLastFiveStarRateUp = true;
      } else {
        lostfiveStar5050(nextRollCount, rnd);
        wasLastFiveStarRateUp = false;
      }
      firstTimePullingFiveStar = false;
    } else {
      wonfiveStar5050(nextRollCount);
      wasLastFiveStarRateUp = true;
    }
  }

  void wonfourStar5050(nextRollCount, Random rnd) {
    summoned.add(SummonHistoryModel(
        nextRollCount,
        Get.find<BannerInfoController>().currentBannerPool['4'][rnd.nextInt(2)],
        'character',
        '4',
        true));

    wasLastFourStarRateUp = true;

    fourStarPityCount = 0;
  }

  void lostfourStar5050(nextRollCount, rnd) {
    // TODO: need to remove the (3) four star character from the rate up banner
    summoned.add(SummonHistoryModel(nextRollCount,
        eventPool.fourStarCharacterPool[rnd.nextInt(17)], 'mixed', '4', false));

    wasLastFourStarRateUp = false;

    fourStarPityCount = 0;
  }

  void wonfiveStar5050(nextRollCount) {
    summoned.add(SummonHistoryModel(
        nextRollCount,
        Get.find<BannerInfoController>().currentBannerPool['5'],
        'character',
        '5',
        true));

    wasLastFiveStarRateUp = true;

    fiveStarPityCount = 0;
  }

  void lostfiveStar5050(nextRollCount, rnd) {
    summoned.add(SummonHistoryModel(
        nextRollCount,
        eventPool.fiveStarCharacterPool[rnd.nextInt(5)],
        'character',
        '5',
        false));

    wasLastFiveStarRateUp = false;

    fiveStarPityCount = 0;
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

      // Map<int, String> tempSummoned = {};

      // fourStarWeaponPool.asMap().forEach((key, value) {
      //   tempSummoned[key] = value;
      // });

      // fourStarCharPool.asMap().forEach((key, value) {
      //   tempSummoned[key] = value;
      // });

      // // reverse summons
      // final List<int> reversedKeys =
      //     tempSummoned.keys.toList().reversed.toList();

      // reversedKeys.forEach((int e) {
      //   summoned[e] =
      //       tempSummoned[e]!; // ! means I can guarantee this wont be null
      // });

      update();
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
