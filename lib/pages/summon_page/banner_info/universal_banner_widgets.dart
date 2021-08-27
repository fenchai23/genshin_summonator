import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_controller.dart';
import 'package:get/get.dart';

class BannerChooser extends StatelessWidget {
  const BannerChooser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BannerInfoController>(
      init: BannerInfoController(),
      builder: (info) => Wrap(
        spacing: 5.0,
        children: [
          TextButton(
            child: Text(
              'Character',
              style: TextStyle(
                  color: (info.currentBannerType == 'character')
                      ? Colors.amberAccent.withOpacity(0.7)
                      : Colors.white70),
            ),
            onPressed: () => info.switchBannerType('character'),
          ),
          Visibility(
            visible: false,
            child: TextButton(
              child: Text(
                'Weapon',
                style: TextStyle(
                    color: (info.currentBannerType == 'weapon')
                        ? Colors.amberAccent.withOpacity(0.7)
                        : Colors.white70),
              ),
              onPressed: () => info.switchBannerType('weapon'),
            ),
          ),
          TextButton(
            child: Text(
              'Standard',
              style: TextStyle(
                  color: (info.currentBannerType == 'standard')
                      ? Colors.amberAccent.withOpacity(0.7)
                      : Colors.white70),
            ),
            onPressed: () => info.switchBannerType('standard'),
          ),
        ],
      ),
    );
  }
}
