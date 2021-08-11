import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:get/get.dart';

class SummonPage extends StatelessWidget {
  const SummonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Wrap(
        spacing: 10,
        children: [
          FloatingActionButton(
            onPressed: () => Get.find<SummonHistoryController>().summon(1),
            child: Text('1'),
          ),
          FloatingActionButton(
            onPressed: () => Get.find<SummonHistoryController>().summon(10),
            child: Text('10'),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BannerInfo(),
              Divider(),
              Expanded(
                child: SummonHistory(),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            child: IconButton(
                onPressed: () async {
                  await DesktopWindow.setWindowSize(Size(1000, 900));
                },
                icon: Icon(Icons.menu)),
          ),
        ],
      ),
    );
  }
}
