import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/menu/more_actions.dart';
import 'package:genshin_summonator/pages/summon_page/all_banners_info/all_banners_info.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summary_summon_history.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page_controller.dart';
import 'package:genshin_summonator/windows_window.dart';
import 'package:get/get.dart';

class SummonPage extends StatelessWidget {
  const SummonPage({Key? key}) : super(key: key);

  // TODO: add standard banner
  // TODO: add sharedPreferences for bg music preference and audio etc
  // TODO: add a way to not use any asset from the app itself

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SummonPageController>(
      init: SummonPageController(),
      builder: (summonPage) => Scaffold(
        backgroundColor: Colors.blueGrey[100],
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.bottomSheet(MoreActions()),
          backgroundColor: Colors.amber[400],
          child: Icon(Icons.more_vert_rounded),
        ),
        body: WindowBorder(
          color: Color(0xFF805306),
          width: 1,
          child: Stack(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 750,
                        child: BannerInfo(),
                      ),
                      Container(
                        color: Colors.orange[400],
                        width: 750,
                        height: 150,
                        child: AllBannersInfo(),
                      ),
                      GetBuilder<SummonHistoryController>(
                        init: SummonHistoryController(),
                        builder: (summon) => SummonAverageRateInfo(summon),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blueGrey[100],
                          width: 750,
                          child: SummarySummonHistory(),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        GetBuilder<SummonHistoryController>(
                          init: SummonHistoryController(),
                          builder: (summon) => TopRightWindowActions(summon),
                        ),
                        Expanded(
                          child: SummonHistory(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SummonAverageRateInfo extends StatelessWidget {
  final SummonHistoryController summon;
  const SummonAverageRateInfo(this.summon, {Key? key}) : super(key: key);

  String getSummonStats(SummonHistoryController summoned, int whichOne) {
    String fiveStarStats;
    String fourStarStats;

    if (summoned.fiveStarCount > 0) {
      fiveStarStats = (summoned.summoned.length / summoned.fiveStarCount)
          .toStringAsFixed(2);
    } else {
      fiveStarStats = '?';
    }

    if (summoned.fourStarCount > 0) {
      fourStarStats = (summoned.summoned.length / summoned.fourStarCount)
          .toStringAsFixed(2);
    } else {
      fourStarStats = '??';
    }

    return (whichOne == 5) ? fiveStarStats : fourStarStats;
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: (summon.summoned.length > 0),
      child: Container(
        width: 750,
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
                  key: Key(getSummonStats(summon, 5)),
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
                  key: Key(getSummonStats(summon, 4)),
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
  final SummonHistoryController summon;

  const TopRightWindowActions(this.summon, {Key? key}) : super(key: key);

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
              child: (!summon.noAnimations)
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
                          color: Colors.black54, fontWeight: FontWeight.w400),
                    ),
            ),
            Row(
              children: [
                Tooltip(
                  message: 'reset',
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                  ),
                  textStyle: TextStyle(fontSize: 20, color: Colors.white70),
                  child: InkWell(
                    onTap: () {
                      Get.defaultDialog(
                          title: 'Reset',
                          middleText: 'Do you want to reset all summons?',
                          confirm: TextButton(
                              onPressed: () {
                                summon.resetSummons();
                                Get.back();
                              },
                              child: Text(
                                'Reset',
                                style: TextStyle(color: Colors.redAccent),
                              )));
                    },
                    child: Icon(
                      Icons.refresh,
                      color: Colors.red[400],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                WindowButtons(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
