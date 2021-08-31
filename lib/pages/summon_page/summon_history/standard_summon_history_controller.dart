import 'dart:math';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_model.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/standard_banner_info_controller.dart';
import 'package:genshin_summonator/pages/summon_page/goal_rolls/goal_rolls_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_model.dart';
import 'package:get/get.dart';

//
class StandardSummonHistoryController extends GetxController {
  int fourStarPityCount = 0;
  int fiveStarPityCount = 0;
  bool firstTimePullingFourStar = true;
  bool firstTimePullingFiveStar = true;
  // bool wasLastFourStarRateUp = false;
  // bool wasLastFiveStarRateUp = false;
  List<SummonHistoryModel> summoned = [];
  List<SummonHistoryModel> summonedFournFiveStarOnly = [];
  double fourStarChance = (5.1 * 1000) / 100;
  double fiveStarChance = (0.6 * 1000) / 100;
  double fiveStarSoftChance = (32.4 * 1000) / 100;
  String commentary = 'good luck ~';
  int fiveStarCount = 0;
  int fourStarCount = 0;
  final ScrollController historyScrollController = ScrollController();
  bool noAnimations = false;

  void resetSummons() {
    fourStarPityCount = 0;
    fiveStarPityCount = 0;
    firstTimePullingFourStar = true;
    firstTimePullingFiveStar = true;
    // wasLastFourStarRateUp = false;
    // wasLastFiveStarRateUp = false;
    summoned = [];
    summonedFournFiveStarOnly = [];
    commentary = 'good luck ~';
    fiveStarCount = 0;
    fourStarCount = 0;

    update();
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

  Future<void> rollWithGoal(String condType) async {
    resetSummons();

    noAnimations = true;

    final GoalRollsController goalCtrl = Get.find<GoalRollsController>();

    goalCtrl.setGoalStatus(GoalStatus.started);

    while (goalCtrl.goalStatus != GoalStatus.stopped) {
      for (var i = 1; i <= 10; i++) increasePity();

      noAnimations = false;

      if (historyScrollController.hasClients) {
        if (historyScrollController.offset != 0.0)
          historyScrollController.animateTo(0.0,
              duration: Duration(milliseconds: 400), curve: Curves.ease);
      }

      if (condType == 'rarity') goalByRarity();

      update();

      if (goalCtrl.goalStatus == GoalStatus.stopped) {
        goalCtrl.goalMessage = 'More Actions';
        break;
      }

      await Future.delayed(Duration(milliseconds: 1));
    }
  }

  void goalByRarity() {
    final goalController = Get.find<GoalRollsController>();

    int fourStarAmount = int.tryParse(goalController.tec4Star.text) ?? 0;
    int fiveStarAmount = int.tryParse(goalController.tec5Star.text) ?? 0;

    int fourStarCondCount = 0;
    int fiveStarCondCount = 0;

    // check if list has reached it's goal
    summoned.skip(summoned.length - 10).forEach((s) {
      if (s.rarity == '5') fiveStarCondCount++;
      if (s.rarity == '4') fourStarCondCount++;
      if ((fiveStarCondCount >= fiveStarAmount) &&
          (fourStarCondCount >= fourStarAmount))
        goalController.setGoalStatus(GoalStatus.stopped);
    });

    goalController.goalMessage =
        'Rolling will stop when ($fiveStarAmount) 5* and ($fourStarAmount) 4* is found on a 10 pull.';
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
    final item = Get.find<StandardBannerInfoController>()
        .stdPool
        .threeStarWeaponPool[rnd.nextInt(13)];

    summoned.add(SummonHistoryModel(
        nextRollCount, item, fixNaming(item), 'weapon', '3', false, 0));
    fourStarPityCount++;
    fiveStarPityCount++;
  }

  void distributeFourStar(nextRollCount, rnd) {
    bool win5050 = rnd.nextBool();

    if (win5050) {
      wonfourStar5050(nextRollCount, rnd);
    } else {
      lostfourStar5050(nextRollCount, rnd);
    }

    fiveStarPityCount++;
  }

  void distributeFiveStar(nextRollCount, rnd) {
    bool win5050 = rnd.nextBool();

    if (win5050) {
      wonfiveStar5050(nextRollCount, rnd);
    } else {
      lostfiveStar5050(nextRollCount, rnd);
    }

    if (fourStarPityCount == 9)
      fourStarPityCount = 0;
    else
      fourStarPityCount++;
  }

  void wonfourStar5050(nextRollCount, Random rnd) {
    final stdBannerController = Get.find<StandardBannerInfoController>();

    final item = stdBannerController.stdPool.fourStarCharacterPool[
        rnd.nextInt(stdBannerController.stdPool.fourStarCharacterPool.length)];

    final fixedName = fixNaming(item);
    final constellation = calConst(item);

    summoned.add(SummonHistoryModel(nextRollCount, item, fixedName, 'character',
        '4', false, constellation));

    addToSummaryList(SummonHistoryModel(nextRollCount, item, fixedName,
        'character', '4', false, constellation));

    fourStarCount++;
    fourStarPityCount = 0;
  }

  void lostfourStar5050(nextRollCount, Random rnd) {
    final stdBannerController = Get.find<StandardBannerInfoController>();

    final item = stdBannerController.stdPool.fourStarWeaponPool[
        rnd.nextInt(stdBannerController.stdPool.fourStarWeaponPool.length)];

    final fixedName = fixNaming(item);
    final constellation = calConst(item);

    summoned.add(SummonHistoryModel(
        nextRollCount, item, fixedName, 'weapon', '4', false, constellation));

    addToSummaryList(SummonHistoryModel(
        nextRollCount, item, fixedName, 'weapon', '4', false, constellation));

    fourStarCount++;
    fourStarPityCount = 0;
  }

  void wonfiveStar5050(nextRollCount, Random rnd) {
    final stdBannerController = Get.find<StandardBannerInfoController>();

    final item = stdBannerController.stdPool.fiveStarCharacterPool[
        rnd.nextInt(stdBannerController.stdPool.fiveStarCharacterPool.length)];

    final fixedName = fixNaming(item);
    final constellation = calConst(item);

    summoned.add(SummonHistoryModel(nextRollCount, item, fixedName, 'character',
        '5', false, constellation));

    addToSummaryList(SummonHistoryModel(nextRollCount, item, fixedName,
        'character', '5', false, constellation));

    fiveStarCount++;
    fiveStarPityCount = 0;
  }

  void lostfiveStar5050(nextRollCount, Random rnd) {
    final stdBannerController = Get.find<StandardBannerInfoController>();

    final item = stdBannerController.stdPool.fiveStarWeaponPool[
        rnd.nextInt(stdBannerController.stdPool.fiveStarWeaponPool.length)];

    final fixedName = fixNaming(item);
    final constellation = calConst(item);

    summoned.add(SummonHistoryModel(nextRollCount, item, fixedName, 'character',
        '5', false, constellation));

    addToSummaryList(SummonHistoryModel(nextRollCount, item, fixedName,
        'character', '5', false, constellation));

    fiveStarCount++;
    fiveStarPityCount = 0;
  }

  addToSummaryList(SummonHistoryModel summon) {
    List<SummonHistoryModel> itemsToAdd = [];

    Iterable<SummonHistoryModel> it =
        summonedFournFiveStarOnly.where((item) => (item.item == summon.item));
    if (it.length > 0) {
      it.forEach((e) => e.constellation = summon.constellation);
    } else {
      itemsToAdd.add(summon);
    }

    summonedFournFiveStarOnly.addAll(itemsToAdd);

    // sort items
    summonedFournFiveStarOnly.sort((a, b) => <Comparator<SummonHistoryModel>>[
          (o1, o2) => o1.rarity.compareTo(o2.rarity),
          (o1, o2) => o1.constellation.compareTo(o2.constellation),
        ].map((e) => e(a, b)).firstWhere((e) => e != 0, orElse: () => 0));
  }

  String fixNaming(dynamic item) {
    // print(stdPool.nameMap['aether.json']);
    // return item;
    return BannerInfoModel.nameMap[item].toString();
  }

  int calConst(dynamic item) {
    int cons = 0;

    summoned.forEach((e) {
      if (item == e.item) cons++;
    });
    return cons;
  }
}
