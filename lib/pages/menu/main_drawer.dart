import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page_controller.dart';
import 'package:get/get.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SummonPageController>(
      init: SummonPageController(),
      builder: (player) => Drawer(
        child: Container(
          color: Colors.blueGrey[100],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 40),
            child: ListView(
              children: [
                Container(
                  width: 60,
                  height: 200,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://static.wikia.nocookie.net/gensin-impact/images/c/c2/Character_Zhongli_Thumb.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Background Music',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    FlutterSwitch(
                      value: player.isbgMusicPlaying,
                      activeColor: Colors.amber[400]!,
                      width: 60,
                      onToggle: (status) => (status)
                          ? player.setPlayerStatus(
                              player.bgMusicPlayer, !status)
                          : player.setPlayerStatus(
                              player.bgMusicPlayer, !status),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
