import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:genshin_summonator/models/SummonPool.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_model.dart';
import 'package:get/get.dart';

class SummonHistoryController extends GetxController {
  late EventPool eventPool;
  bool hasEventPoolInit = false;
  int fourStarPityCount = 0;
  int fiveStarPityCount = 0;
  bool firstTimePullingFourStar = true;
  bool firstTimePullingFiveStar = true;
  bool wasLastFourStarRateUp = false;
  bool wasLastFiveStarRateUp = false;
  List<SummonHistoryModel> summoned = [];
  double fourStarChance = (5.1 * 1000) / 100;
  double fiveStarChance = (0.6 * 1000) / 100;
  double fiveStarSoftChance = (32.4 * 1000) / 100;
  String commentary = 'good luck ~';

  @override
  Future<void> onInit() async {
    await loadPoolData();

    super.onInit();
  }

  Future<void> loadPoolData() async {
    try {
      final rawBannerData =
          await File("assets/genshin/index/banners.json").readAsString();

      final bannerData = json.decode(rawBannerData);

      final List<dynamic> threeStarWeaponPool =
          bannerData['event_pool']['weapons']['3'];
      final List<dynamic> fourStarWeaponPool =
          bannerData['event_pool']['weapons']['4'];
      final List<dynamic> fourStarCharPool =
          bannerData['event_pool']['characters']['4'];
      final List<dynamic> fiveStarCharPool =
          bannerData['event_pool']['characters']['5'];

      final characterImagesData = json.decode(
          await File("assets/genshin/image/characters.json").readAsString());

      final weaponImagesData = json.decode(
          await File("assets/genshin/image/weapons.json").readAsString());

      Map<dynamic, dynamic> imagesData = {};

      imagesData.addAll(characterImagesData);
      imagesData.addAll(weaponImagesData);

      eventPool = EventPool(fiveStarCharPool, fourStarCharPool,
          threeStarWeaponPool, fourStarWeaponPool, imagesData);

      Get.find<BannerInfoController>().removeRateUpCharFromPool();

      hasEventPoolInit = true;

      update();
    } on Exception catch (e) {
      print(e.toString());
    }
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
      commentary = 'oof... 5* hard pity';
      // hard pity lmao
      distributeFiveStar(nextRollCount, rnd);
      update();
      return;
    }

    if ((fourStarPityCount + 1) == 10) {
      commentary = 'good luck next time kiddo, 4* hard pity';
      // hard pity 4 star
      distributeFourStar(nextRollCount, rnd);
      update();
      return;
    }

    if ((fiveStarPityCount + 1) > 75) {
      commentary = 'attention! entering soft pity realm...';

      // entering soft pity realm
      int luck = rnd.nextInt(1000);

      if (luck >= 0 && luck <= fiveStarSoftChance) {
        commentary = 'congrats! 5* on soft pity';
        distributeFiveStar(nextRollCount, rnd);
        update();
        return;
      } else if (luck >= 0 && luck <= fourStarChance) {
        commentary = 'rolled a 4* before pity, you are quite lucky!';
        distributeFourStar(nextRollCount, rnd);
        update();
        return;
      } else {
        commentary = '3*? boooo';
        distributeThreeStar(nextRollCount, rnd);
        update();
      }
    } else {
      int luck = rnd.nextInt(1000);
      if (luck >= 0 && luck <= fiveStarChance) {
        commentary =
            'you rolled a 5* before soft pity, you are VERY VERY lucky!';
        distributeFiveStar(nextRollCount, rnd);
        update();
        return;
      } else if (luck >= 0 && luck <= fourStarChance) {
        commentary = 'rolled a 4* before pity, you are quite lucky!';
        distributeFourStar(nextRollCount, rnd);
        update();
        return;
      } else {
        commentary = 'just a 3*...';
        distributeThreeStar(nextRollCount, rnd);
      }

      update();
    }
  }

  void distributeThreeStar(nextRollCount, rnd) {
    summoned.add(SummonHistoryModel(nextRollCount,
        eventPool.threeStarWeaponPool[rnd.nextInt(12)], 'weapon', '3', false));
    fourStarPityCount++;
    fiveStarPityCount++;
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
    fiveStarPityCount++;
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

  void lostfourStar5050(nextRollCount, Random rnd) {
    bool win5050 = rnd.nextBool();

    final fourStarCharPool =
        Get.find<BannerInfoController>().fourStarEventCharPool;

    if (win5050) {
      summoned.add(SummonHistoryModel(
          nextRollCount,
          fourStarCharPool[rnd.nextInt(fourStarCharPool.length - 1)],
          'character',
          '4',
          false));
    } else {
      summoned.add(SummonHistoryModel(nextRollCount,
          eventPool.fourStarWeaponPool[rnd.nextInt(17)], 'weapon', '4', false));
    }

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
}
