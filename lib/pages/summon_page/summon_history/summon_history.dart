import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_model.dart';
import 'package:get/get.dart';

class SummonHistory extends StatelessWidget {
  const SummonHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SummonHistoryController>(
      init: SummonHistoryController(),
      builder: (summons) {
        if (summons.summoned.length > 0)
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: ListView.builder(
                  reverse: false,
                  itemCount: summons.summoned.length,
                  itemBuilder: (BuildContext context, int index) {
                    final reversedIndex = summons.summoned.length - 1 - index;

                    return SummonRows(summons.summoned[reversedIndex]);
                  }));
        else
          return Container(
            color: Colors.blueGrey[200],
          );
      },
    );
  }
}

class SummonRows extends StatelessWidget {
  final SummonHistoryModel summon;
  const SummonRows(this.summon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SummonHistoryController ctrl = Get.find<SummonHistoryController>();

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(flex: 1, child: Text((summon.index).toString())),
            Expanded(
              flex: 3,
              child: CachedNetworkImage(
                imageUrl: ctrl.eventPool.images[summon.item]['icon'] ??
                    ctrl.eventPool.images[summon.item]['image'],
                fit: BoxFit.fitHeight,
                height: 70,
                width: 70,
              ),
            ),
            Expanded(flex: 5, child: Text(summon.item)),
            Expanded(flex: 3, child: Text(((summon.index) * 160).toString())),
            Expanded(
                flex: 3,
                child: Text('\$ ${((summon.index) * 1.98).toStringAsFixed(2)}'))
          ],
        ),
      ),
    );
  }
}
