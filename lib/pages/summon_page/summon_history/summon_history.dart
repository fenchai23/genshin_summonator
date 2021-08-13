import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_model.dart';
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
          return ListView.builder(
              reverse: false,
              itemCount: summons.summoned.length,
              itemBuilder: (BuildContext context, int index) {
                final reversedIndex = summons.summoned.length - 1 - index;

                return SummonRows(summons.summoned[reversedIndex]);
              });
        else
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.list_rounded,
                  size: 100,
                ),
                Text(
                  'Good luck on your summons!',
                  style: TextStyle(fontSize: 35),
                )
              ],
            ),
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

    String getApropUrl(SummonHistoryController ctrl, String item) {
      String url = '';
      if (ctrl.eventPool.images[summon.item]['icon'] != null)
        url = ctrl.eventPool.images[summon.item]['icon'];
      else if (ctrl.eventPool.images[summon.item]['image'] != null)
        url = ctrl.eventPool.images[summon.item]['image'];
      else
        url =
            'https://static.wikia.nocookie.net/gensin-impact/images/6/6a/Character_Dainsleif_Portrait.png/revision/latest/scale-to-width-down/1000?cb=20210321222051';
      return url;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Container(
        color: (summon.rarity == '5')
            ? Colors.amber
            : (summon.rarity == '4')
                ? Colors.purple[300]
                : Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex: 2, child: Text((summon.index).toString())),
              Expanded(
                flex: 2,
                child: CachedNetworkImage(
                  imageUrl: getApropUrl(ctrl, summon.item),
                  fit: BoxFit.fitHeight,
                  height: 70,
                  width: 70,
                ),
              ),
              Expanded(
                flex: 2,
                child: CachedNetworkImage(
                  imageUrl: BannerInfoModel.starIcons[summon.rarity]!,
                ),
              ),
              Expanded(flex: 5, child: Text(summon.item)),
              Expanded(
                flex: 1,
                child: CachedNetworkImage(
                  imageUrl: BannerInfoModel.currency['primogem']!,
                ),
              ),
              Expanded(flex: 3, child: Text(((summon.index) * 160).toString())),
              Expanded(
                  flex: 3,
                  child:
                      Text('\$ ${((summon.index) * 1.98).toStringAsFixed(2)}'))
            ],
          ),
        ),
      ),
    );
  }
}
