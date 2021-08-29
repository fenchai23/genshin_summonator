import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/character_summon_history_controller.dart';
import 'package:get/get.dart';

enum GoalStatus { sleeping, started, stopped }

class GoalRollsController extends GetxController {
  TextEditingController tec5Star = TextEditingController();
  TextEditingController tec4Star = TextEditingController();
  TextEditingController tecCharWeapon = TextEditingController();
  GoalStatus goalStatus = GoalStatus.sleeping;
  String goalMessage = '';
  int ratingCondLimit = 0;
  String ratingCondMsg = '';
  Color ratingCondLimitColor = Colors.green[600]!;
  List<String> suggestions = ['acb', 'retrun', 'prep'];

  void setGoalStatus(GoalStatus status) {
    goalStatus = status;
    update();
  }

  void setRatingCondLimit() {
    final int cond1 = int.tryParse(tec5Star.text) ?? 0;
    final int cond2 = int.tryParse(tec4Star.text) ?? 0;

    ratingCondLimit = (cond1 + cond2);

    if (cond1 > 3)
      ratingCondMsg = 'please be realistic';
    else if (cond2 > 4)
      ratingCondMsg = 'please be realistic';
    else if (cond1 == 0 && cond2 == 0)
      ratingCondMsg = '';
    else
      ratingCondMsg = 'looks alright';

    if (ratingCondLimit > 10)
      ratingCondLimitColor = Colors.red[400]!;
    else
      ratingCondLimitColor = Colors.green[600]!;

    update();
  }

  void simulateRollWithGoal() async {
    if ((tec4Star.text == '') && (tec5Star.text == '')) return;

    Get.back(closeOverlays: true);

    await Get.find<CharacterSummonHistoryController>().rollWithGoal('rarity');
  }
}
