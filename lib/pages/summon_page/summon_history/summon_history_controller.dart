import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
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
  List<SummonHistoryModel> summonedFourFiveStarOnly = [];
  double fourStarChance = (5.1 * 1000) / 100;
  double fiveStarChance = (0.6 * 1000) / 100;
  double fiveStarSoftChance = (32.4 * 1000) / 100;
  String commentary = 'good luck ~';
  int fiveStarCount = 0;
  int fourStarCount = 0;
  final ScrollController historyScrollController = ScrollController();
  bool noAnimations = false;

  @override
  Future<void> onInit() async {
    await loadCharEventData();

    super.onInit();
  }

  void resetSummons() {
    fourStarPityCount = 0;
    fiveStarPityCount = 0;
    firstTimePullingFourStar = true;
    firstTimePullingFiveStar = true;
    wasLastFourStarRateUp = false;
    wasLastFiveStarRateUp = false;
    summoned = [];
    summonedFourFiveStarOnly = [];
    commentary = 'good luck ~';
    fiveStarCount = 0;
    fourStarCount = 0;

    update();
  }

  Future<void> loadCharEventData() async {
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

      final Map<dynamic, dynamic> nameMap = bannerData['namemap'];

      final characterImagesData = json.decode(
          await File("assets/genshin/image/characters.json").readAsString());

      final weaponImagesData = json.decode(
          await File("assets/genshin/image/weapons.json").readAsString());

      Map<dynamic, dynamic> imagesData = {};

      imagesData.addAll(characterImagesData);
      imagesData.addAll(weaponImagesData);

      eventPool = EventPool(fiveStarCharPool, fourStarCharPool,
          threeStarWeaponPool, fourStarWeaponPool, nameMap, imagesData);

      Get.find<BannerInfoController>().removeRateUpCharFromPool();

      hasEventPoolInit = true;

      update();
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  Future<void> loadStdEventData() async {
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

      final Map<dynamic, dynamic> nameMap = bannerData['namemap'];

      final characterImagesData = json.decode(
          await File("assets/genshin/image/characters.json").readAsString());

      final weaponImagesData = json.decode(
          await File("assets/genshin/image/weapons.json").readAsString());

      Map<dynamic, dynamic> imagesData = {};

      imagesData.addAll(characterImagesData);
      imagesData.addAll(weaponImagesData);

      eventPool = EventPool(fiveStarCharPool, fourStarCharPool,
          threeStarWeaponPool, fourStarWeaponPool, nameMap, imagesData);

      Get.find<BannerInfoController>().removeRateUpCharFromPool();

      hasEventPoolInit = true;

      update();
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  void roll(int amount) {
    if (amount != 1) noAnimations = true;

    for (var i = 1; i <= amount; i++) increasePity();

    noAnimations = false;

    if (historyScrollController.hasClients) {
      if (historyScrollController.offset != 0.0)
        historyScrollController.animateTo(0.0,
            duration: Duration(milliseconds: 400), curve: Curves.ease);
    }

    update();
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
    final item = eventPool.threeStarWeaponPool[rnd.nextInt(13)];

    summoned.add(SummonHistoryModel(
        nextRollCount, item, fixNaming(item), 'weapon', '3', false, 0));
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

    if (fourStarPityCount == 9)
      fourStarPityCount = 0;
    else
      fourStarPityCount++;
  }

  void wonfourStar5050(nextRollCount, Random rnd) {
    final item =
        Get.find<BannerInfoController>().currentBannerPool['4'][rnd.nextInt(3)];

    final fixedName = fixNaming(item);
    final constellation = calConst(item);

    summoned.add(SummonHistoryModel(
        nextRollCount, item, fixedName, 'character', '4', true, constellation));

    addToSummaryList(SummonHistoryModel(
        nextRollCount, item, fixedName, 'character', '4', true, constellation));

    wasLastFourStarRateUp = true;
    fourStarCount++;
    fourStarPityCount = 0;
  }

  void lostfourStar5050(nextRollCount, Random rnd) {
    bool win5050 = rnd.nextBool();

    final fourStarCharPool =
        Get.find<BannerInfoController>().fourStarEventCharPool;

    final charItem = fourStarCharPool[rnd.nextInt(fourStarCharPool.length)];
    final weaponItem = eventPool.fourStarWeaponPool[rnd.nextInt(18)];
    if (win5050) {
      final fixedName = fixNaming(charItem);
      final constellation = calConst(charItem);

      summoned.add(SummonHistoryModel(nextRollCount, charItem, fixedName,
          'character', '4', false, constellation));

      addToSummaryList(SummonHistoryModel(nextRollCount, charItem, fixedName,
          'character', '4', false, constellation));
    } else {
      final fixedName = fixNaming(weaponItem);
      final constellation = calConst(weaponItem);

      summoned.add(SummonHistoryModel(nextRollCount, weaponItem, fixedName,
          'weapon', '4', false, constellation));

      addToSummaryList(SummonHistoryModel(nextRollCount, weaponItem, fixedName,
          'character', '4', false, constellation));
    }

    wasLastFourStarRateUp = false;
    fourStarCount++;
    fourStarPityCount = 0;
  }

  void wonfiveStar5050(nextRollCount) {
    final item = Get.find<BannerInfoController>().currentBannerPool['5'][0];

    final fixedName = fixNaming(item);
    final constellation = calConst(item);

    summoned.add(SummonHistoryModel(
        nextRollCount, item, fixedName, 'character', '5', true, constellation));

    addToSummaryList(SummonHistoryModel(
        nextRollCount, item, fixedName, 'character', '5', true, constellation));

    wasLastFiveStarRateUp = true;
    fiveStarCount++;
    fiveStarPityCount = 0;
  }

  void lostfiveStar5050(nextRollCount, rnd) {
    final item = eventPool.fiveStarCharacterPool[rnd.nextInt(5)];

    final fixedName = fixNaming(item);
    final constellation = calConst(item);

    summoned.add(SummonHistoryModel(
        nextRollCount, item, fixedName, 'character', '5', true, constellation));

    addToSummaryList(SummonHistoryModel(
        nextRollCount, item, fixedName, 'character', '5', true, constellation));

    wasLastFiveStarRateUp = false;
    fiveStarCount++;
    fiveStarPityCount = 0;
  }

  addToSummaryList(SummonHistoryModel summon) {
    List<SummonHistoryModel> itemsToAdd = [];

    Iterable<SummonHistoryModel> it =
        summonedFourFiveStarOnly.where((item) => (item.item == summon.item));
    if (it.length > 0) {
      it.forEach((e) => e.constellation = summon.constellation);
    } else {
      itemsToAdd.add(summon);
    }

    summonedFourFiveStarOnly.addAll(itemsToAdd);

    // sort items
    summonedFourFiveStarOnly.sort((a, b) => <Comparator<SummonHistoryModel>>[
          (o1, o2) => o1.rarity.compareTo(o2.rarity),
          (o1, o2) => o1.constellation.compareTo(o2.constellation),
        ].map((e) => e(a, b)).firstWhere((e) => e != 0, orElse: () => 0));
  }

  String fixNaming(dynamic item) {
    // print(eventPool.nameMap['aether.json']);
    // return item;
    return eventPool.nameMap[item].toString();
  }

  int calConst(dynamic item) {
    int cons = 0;

    summoned.forEach((e) {
      if (item == e.item) cons++;
    });
    return cons;
  }
}
