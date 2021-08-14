import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_model.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page_controller.dart';
import 'package:get/get.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController tec = TextEditingController(text: '1000');
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
                Divider(),
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
                ),
                Divider(),
                TextButton.icon(
                  onPressed: () => Get.bottomSheet(Container(
                    child: Wrap(
                      children: <Widget>[
                        ListTile(
                          leading: CachedNetworkImage(
                            imageUrl:
                                BannerInfoModel.currency['intertwined_fate']!,
                            height: 50,
                          ),
                          title: TextField(
                            controller: tec,
                            autofocus: true,
                            onTap: () => tec.clear(),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                          ),
                          trailing: TextButton(
                            onPressed: () {
                              Get.back(closeOverlays: true);

                              Get.find<SummonHistoryController>()
                                  .roll(int.parse(tec.text));
                            },
                            child: Text('Roll!'),
                          ),
                        ),
                      ],
                    ),
                  )),
                  icon: CachedNetworkImage(
                    imageUrl: BannerInfoModel.currency['intertwined_fate']!,
                    height: 50,
                  ),
                  label: Text(
                    'Custom Roll',
                    style: TextStyle(fontSize: 18.0, color: Colors.black87),
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
