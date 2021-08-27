import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/character_summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summary_summon_history.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page.dart';
import 'package:get/get.dart';

import 'character_banner_info.dart';

class CharacterBannerUI extends StatelessWidget {
  const CharacterBannerUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: 650, child: CharacterBannerInfo()),
        GetBuilder<CharacterSummonHistoryController>(
          autoRemove: false,
          init: CharacterSummonHistoryController(),
          builder: (summon) => SummonAverageRateInfo(summon),
        ),
        Expanded(
          child: Container(
            color: Colors.blueGrey[100],
            width: 650,
            child: SummarySummonHistory(),
          ),
        ),
      ],
    );
  }
}
