import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history.dart';
import 'package:genshin_summonator/windows_window.dart';

class SummonPage extends StatelessWidget {
  const SummonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    BannerInfo(),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        width: 750,
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
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
    );
  }
}
