import 'package:cached_network_image/cached_network_image.dart';
import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_controller.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_model.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/character_summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/standard_summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page_controller.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreActions extends StatelessWidget {
  const MoreActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BannerInfoController bic = Get.find<BannerInfoController>();

    final TextEditingController tec = TextEditingController(text: '500');

    return Container(
      color: Colors.white,
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: TextButton(
                onPressed: () async {
                  await canLaunch('https://github.com/theBowja/genshin-db')
                      ? await launch('https://github.com/theBowja/genshin-db')
                      : throw 'Could not launch https://github.com/theBowja/genshin-db';
                },
                child: Text(
                    'Every character and weapon data is extracted from https://github.com/theBowja/genshin-db')),
          ),
          ListTile(
            leading: CachedNetworkImage(
              imageUrl: BannerInfoModel.currency['intertwined_fate']!,
              height: 50,
            ),
            title: RawKeyboardListener(
              focusNode: FocusNode(),
              onKey: (event) {
                if (event.runtimeType == RawKeyDownEvent &&
                    (event.logicalKey.keyId == 4295426088)) {
                  Get.back(closeOverlays: true);

                  Get.find<CharacterSummonHistoryController>()
                      .roll(int.parse(tec.text));
                }
              },
              child: TextFormField(
                controller: tec,
                autofocus: true,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: () {
                    Get.back(closeOverlays: true);

                    if (bic.currentBannerType == 'character')
                      Get.find<CharacterSummonHistoryController>()
                          .rollWithGoal();
                  },
                  child: Text('Roll with goal beta'),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    Get.back(closeOverlays: true);

                    if (bic.currentBannerType == 'character')
                      Get.find<CharacterSummonHistoryController>()
                          .resetSummons();
                    else if (bic.currentBannerType == 'standard')
                      Get.find<StandardSummonHistoryController>()
                          .resetSummons();
                  },
                  child: Text(
                    'Clear All Rolls',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    Get.back(closeOverlays: true);

                    if (bic.currentBannerType == 'character')
                      Get.find<CharacterSummonHistoryController>()
                          .roll(int.parse(tec.text));
                    else if (bic.currentBannerType == 'standard')
                      Get.find<StandardSummonHistoryController>()
                          .roll(int.parse(tec.text));
                  },
                  child: Text('Roll..!'),
                ),
              ],
            ),
          ),
          MiniMusicControls(),
        ],
      ),
    );
  }
}

class MiniMusicControls extends StatelessWidget {
  const MiniMusicControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SummonPageController>(
      init: SummonPageController(),
      builder: (spController) => Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Tooltip(
              message: 'previous',
              child: InkWell(
                onTap: () => spController.bgMusicPlayer.back(),
                child: Icon(
                  Icons.skip_previous,
                  size: 50,
                ),
              ),
            ),
            Tooltip(
              message: (spController.isBgMusicPlaying) ? 'pause' : 'play',
              child: InkWell(
                onTap: () => spController.setBgPlayerStatus(),
                child: Icon(
                  (spController.isBgMusicPlaying)
                      ? Icons.pause_circle
                      : Icons.play_circle,
                  size: 50,
                ),
              ),
            ),
            Tooltip(
              message: 'next',
              child: InkWell(
                onTap: () => spController.bgMusicPlayer.next(),
                child: Icon(
                  Icons.skip_next,
                  size: 50,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Tooltip(
              message: 'repeat mode',
              child: InkWell(
                onTap: () {
                  spController.bgMusicPlayer
                      .setPlaylistMode(PlaylistMode.repeat);
                  Get.snackbar('Music', 'Repeat Mode',
                      overlayBlur: 0.0, barBlur: 0.0);
                },
                child: Icon(
                  Icons.repeat,
                  size: 30,
                ),
              ),
            ),
            Tooltip(
              message: 'loop mode',
              child: InkWell(
                onTap: () {
                  spController.bgMusicPlayer.setPlaylistMode(PlaylistMode.loop);
                  Get.snackbar('Music', 'Loop Mode',
                      overlayBlur: 0.0, barBlur: 0.0);
                },
                child: Icon(
                  Icons.loop,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
