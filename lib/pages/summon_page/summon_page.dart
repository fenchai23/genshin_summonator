import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/menu/main_drawer.dart';
import 'package:genshin_summonator/pages/summon_page/all_banners_info/all_banners_info.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page_controller.dart';
import 'package:genshin_summonator/windows_window.dart';
import 'package:get/get.dart';

class SummonPage extends StatelessWidget {
  const SummonPage({Key? key}) : super(key: key);

  // TODO: add dragable scrollbar on pull history
  // TODO: add standard banner
  // TODO: add constellations on sumnmon history characters
  // TODO: add sharedPreferences for bg music preference and audio etc
  // TODO: add a RESET button

  @override
  Widget build(BuildContext context) {
    String getSummonStats(SummonHistoryController summoned) {
      String fiveStarStats = (summoned.summoned.length / summoned.fiveStarCount)
          .toStringAsFixed(2);
      String fourStarStats = (summoned.summoned.length / summoned.fourStarCount)
          .toStringAsFixed(2);

      return 'Summon Stats:\n5* rate = $fiveStarStats / ${summoned.summoned.length}\n4* rate = $fourStarStats / ${summoned.summoned.length}';
    }

    return GetBuilder<SummonPageController>(
      init: SummonPageController(),
      builder: (summonPage) => Scaffold(
        key: summonPage.scaffoldKey,
        drawer: MainDrawer(),
        backgroundColor: Colors.blueGrey[100],
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
                      Expanded(
                        child: Container(
                          color: Colors.orange[400],
                          width: 750,
                          child: AllBannersInfo(),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        GetBuilder<SummonHistoryController>(
                          init: SummonHistoryController(),
                          builder: (summon) => Container(
                            height: 30,
                            color: Colors.orange[400],
                            alignment: Alignment.centerRight,
                            child: MoveWindow(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      summon.commentary,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Tooltip(
                                        message: getSummonStats(summon),
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(4)),
                                        ),
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white70),
                                        child: Icon(
                                          Icons.help_center_rounded,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      WindowButtons(),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SummonHistory(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                    onPressed: () =>
                        summonPage.scaffoldKey.currentState!.openDrawer(),
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black45,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
