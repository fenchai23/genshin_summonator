import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history.dart';

class SummonPage extends StatelessWidget {
  const SummonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
