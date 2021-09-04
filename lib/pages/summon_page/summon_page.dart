import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:badges/badges.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/menu/more_actions.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/standard_summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/character_summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page_controller.dart';
import 'package:genshin_summonator/windows_window.dart';
import 'package:get/get.dart';
import 'banner_info/banner_info_controller.dart';
import 'banner_info/character_banner_ui.dart';
import 'banner_info/standard_banner_ui.dart';
import 'goal_rolls/goal_rolls_controller.dart';

class SummonPage extends StatelessWidget {
  const SummonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SummonPageController());

    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      floatingActionButton: MainFab(),
      body: WindowBorder(
        color: Color(0xFF805306),
        width: 1,
        child: Stack(
          children: [
            GetBuilder<BannerInfoController>(
              init: BannerInfoController(),
              builder: (info) => Row(
                children: [
                  (info.currentBannerType == 'character')
                      ? CharacterBannerUI()
                      : (info.currentBannerType == 'standard')
                          ? StandardBannerUI()
                          : Container(),
                  Expanded(
                    child: Column(
                      children: [
                        TopRightWindowActions(),
                        Expanded(
                          child: SummonHistory(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SummonAverageRateInfo extends StatelessWidget {
  final summon;
  const SummonAverageRateInfo(this.summon, {Key? key}) : super(key: key);

  String getSummonStats(summoned, int whichOne) {
    String fiveStarStats;
    String fourStarStats;

    if (summoned.fiveStarCount > 0) {
      fiveStarStats = (summoned.summoned.length / summoned.fiveStarCount)
          .toStringAsFixed(2);
    } else {
      fiveStarStats = '0';
    }

    if (summoned.fourStarCount > 0) {
      fourStarStats = (summoned.summoned.length / summoned.fourStarCount)
          .toStringAsFixed(2);
    } else {
      fourStarStats = '0';
    }

    return (whichOne == 5) ? fiveStarStats : fourStarStats;
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: (summon.summoned.length > 0),
      child: Container(
        width: 650,
        height: 50,
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: DefaultTextStyle(
            style: TextStyle(fontSize: 20, color: Colors.black87),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('You get a 5* every '),
                AnimatedTextKit(
                  key: Key('${getSummonStats(summon, 5)} + 1'),
                  animatedTexts: [
                    RotateAnimatedText(
                      getSummonStats(summon, 5),
                      rotateOut: false,
                      duration: Duration(milliseconds: 300),
                      textStyle: TextStyle(
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                  totalRepeatCount: 1,
                ),
                Text(' pulls, and a 4* every '),
                AnimatedTextKit(
                  key: Key('${getSummonStats(summon, 4)} + 2'),
                  animatedTexts: [
                    RotateAnimatedText(
                      getSummonStats(summon, 4),
                      rotateOut: false,
                      duration: Duration(milliseconds: 300),
                      textStyle: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                  totalRepeatCount: 1,
                ),
                Text(' pulls. (avg)'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopRightWindowActions extends StatelessWidget {
  const TopRightWindowActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: Colors.orange[400],
      alignment: Alignment.centerRight,
      child: MoveWindow(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: GetBuilder<BannerInfoController>(
                  init: BannerInfoController(),
                  builder: (info) => (info.currentBannerType == 'character')
                      ? GetBuilder<CharacterSummonHistoryController>(
                          init: CharacterSummonHistoryController(),
                          builder: (summon) => (!summon.noAnimations)
                              ? AnimatedTextKit(
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      summon.commentary,
                                      textStyle: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400),
                                      speed: Duration(milliseconds: 20),
                                    ),
                                  ],
                                  key: Key(summon.commentary),
                                  isRepeatingAnimation: false,
                                )
                              : Text(
                                  summon.commentary,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400),
                                ))
                      : (info.currentBannerType == 'standard')
                          ? GetBuilder<StandardSummonHistoryController>(
                              init: StandardSummonHistoryController(),
                              builder: (summon) => (!summon.noAnimations)
                                  ? AnimatedTextKit(
                                      animatedTexts: [
                                        TyperAnimatedText(
                                          summon.commentary,
                                          textStyle: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400),
                                          speed: Duration(milliseconds: 20),
                                        ),
                                      ],
                                      key: Key(summon.commentary),
                                      isRepeatingAnimation: false,
                                    )
                                  : Text(
                                      summon.commentary,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400),
                                    ))
                          : Container(),
                )),
            Row(
              children: [
                WindowButtons(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MainFab extends StatelessWidget {
  const MainFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GoalRollsController>(
      init: GoalRollsController(),
      autoRemove: false,
      builder: (goalCtrl) => Tooltip(
        padding: EdgeInsets.all(10.0),
        textStyle: TextStyle(fontSize: 20, color: Colors.white70),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
        message: (goalCtrl.goalMessage == '')
            ? 'More Actions'
            : goalCtrl.goalMessage,
        child: AvatarGlow(
          endRadius: 60.0,
          animate: goalCtrl.goalStatus == GoalStatus.started,
          glowColor: Colors.red,
          child: FloatingActionButton(
            onPressed: () => (goalCtrl.goalStatus != GoalStatus.started)
                ? Get.bottomSheet(MoreActions())
                : goalCtrl.setGoalStatus(GoalStatus.stopped),
            backgroundColor: (goalCtrl.goalStatus != GoalStatus.started)
                ? Colors.amber[400]
                : Colors.redAccent,
            child: (goalCtrl.goalStatus != GoalStatus.started)
                ? Icon(Icons.more_vert_rounded)
                : Icon(Icons.stop),
          ),
        ),
      ),
    );
  }
}
