import 'package:cached_network_image/cached_network_image.dart';
import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_model.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/character_summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page_controller.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreActions extends StatelessWidget {
  const MoreActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                // onTap: () => tec.clear(),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
              ),
            ),
            trailing: TextButton(
              onPressed: () {
                Get.back(closeOverlays: true);

                Get.find<CharacterSummonHistoryController>()
                    .roll(int.parse(tec.text));
              },
              child: Text('Roll!'),
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
    final bgMusic = Get.find<SummonPageController>().bgMusicPlayer;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          InkWell(
            onTap: () => bgMusic.back(),
            child: Icon(
              Icons.skip_previous,
              size: 50,
            ),
          ),
          InkWell(
            onTap: () => bgMusic.playOrPause(),
            child: Icon(
              Icons.play_circle,
              size: 50,
            ),
          ),
          InkWell(
            onTap: () => bgMusic.next(),
            child: Icon(
              Icons.skip_next,
              size: 50,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              bgMusic.setPlaylistMode(PlaylistMode.repeat);
              Get.snackbar('Music', 'Repeat Mode',
                  overlayBlur: 0.0, barBlur: 0.0);
            },
            child: Icon(
              Icons.repeat,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {
              bgMusic.setPlaylistMode(PlaylistMode.loop);
              Get.snackbar('Music', 'Loop Mode',
                  overlayBlur: 0.0, barBlur: 0.0);
            },
            child: Icon(
              Icons.loop,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
