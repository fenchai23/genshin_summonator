import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:get/get.dart';

class SummonHistory extends StatelessWidget {
  const SummonHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SummonHistoryController>(
      init: SummonHistoryController(),
      builder: (summons) => (summons.summonsDone.length > 0)
          ? ListView.builder(
              itemCount: summons.summonsDone.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(summons.summonsDone.values.elementAt(index));
              },
            )
          : Container(),
    );
  }
}
