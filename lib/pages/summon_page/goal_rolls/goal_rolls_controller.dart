import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/character_summon_history_controller.dart';
import 'package:get/get.dart';

class GoalRollsController extends GetxController {
  TextEditingController tec5Star = TextEditingController();
  TextEditingController tec4Star = TextEditingController();
  TextEditingController tecCharWeapon = TextEditingController();
  int ratingCondLimit = 0;
  String ratingCondMsg = '';
  Color ratingCondLimitColor = Colors.green[600]!;
  List<String> suggestions = ['acb', 'retrun', 'prep'];

  void setRatingCondLimit() {
    int cond1 = int.tryParse(tec4Star.text) ?? 0;
    int cond2 = int.tryParse(tec4Star.text) ?? 0;

    ratingCondLimit = (cond1 + cond2);

    if (cond1 > 3)
      ratingCondMsg = 'please be realistic';
    else if (cond2 > 4)
      ratingCondMsg = 'please be realistic';
    else
      ratingCondMsg = '';

    if (ratingCondLimit > 10)
      ratingCondLimitColor = Colors.red[400]!;
    else
      ratingCondLimitColor = Colors.green[600]!;

    update();
  }

  void simulateRollWithGoal() async {
    Get.back(closeOverlays: true);

    await Get.find<CharacterSummonHistoryController>().rollWithGoal('rarity');
  }
}
