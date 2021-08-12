import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history.dart';
import 'package:get/get.dart';

class SummonPage extends StatelessWidget {
  const SummonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Stack(
        children: [
          LayoutBuilder(builder: (BuildContext context, BoxConstraints c) {
            if (context.isPhone) {
              return Column(
                children: [
                  BannerInfo(),
                  Divider(),
                  Expanded(
                    child: SummonHistory(),
                  ),
                ],
              );
            } else {
              return Wrap(
                direction: Axis.horizontal,
                children: [
                  BannerInfo(),
                  VerticalDivider(),
                  Expanded(
                    child: SummonHistory(),
                  ),
                ],
              );
            }
          }),
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
