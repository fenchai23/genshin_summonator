import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history.dart';

class SummonPage extends StatelessWidget {
  const SummonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Stack(
        children: [
          Row(
            children: [
              BannerInfo(),
              Expanded(
                  child: Scaffold(
                      appBar: AppBar(),
                      backgroundColor: Colors.blueGrey[100],
                      body: SummonHistory())),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            child: IconButton(
                onPressed: () async {
                  print(await DesktopWindow.getWindowSize());
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.black45,
                )),
          ),
        ],
      ),
    );
  }
}
