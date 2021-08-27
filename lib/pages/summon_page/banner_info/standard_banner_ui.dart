import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/standard_banner_info.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/standard_summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summary_summon_history.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page.dart';
import 'package:get/get.dart';

class StandardBannerUI extends StatelessWidget {
  const StandardBannerUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: 650, child: StandardBannerInfo()),
        GetBuilder<StandardSummonHistoryController>(
          autoRemove: false,
          init: StandardSummonHistoryController(),
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
