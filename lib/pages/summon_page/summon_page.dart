import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/all_banners_info/all_banners_info.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page_controller.dart';
import 'package:genshin_summonator/windows_window.dart';
import 'package:get/get.dart';

class SummonPage extends StatelessWidget {
  const SummonPage({Key? key}) : super(key: key);

  // TODO: add a custom amount to roll
  // TODO: add a left menu
  // TODO: add dragable scrollbar on pull history
  // TODO: add standard banner
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SummonPageController>(
      init: SummonPageController(),
      builder: (summonPage) => Scaffold(
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
                        Container(
                          height: 35,
                          color: Colors.orange[400],
                          alignment: Alignment.centerRight,
                          child: MoveWindow(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GetBuilder<SummonHistoryController>(
                                  init: SummonHistoryController(),
                                  builder: (summon) => Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      summon.commentary,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                WindowButtons(),
                              ],
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
                    onPressed: () async {
                      // print(await DesktopWindow.getWindowSize());
                    },
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
