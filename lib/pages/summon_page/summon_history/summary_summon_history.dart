import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_model.dart';
import 'package:get/get.dart';

class SummarySummonHistory extends StatelessWidget {
  const SummarySummonHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SummonHistoryController>(
      init: SummonHistoryController(),
      builder: (summons) {
        if (summons.summonedFourFiveStarOnly.length > 0)
          return Scrollbar(
            thickness: 20.0,
            child: GridView.builder(
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  childAspectRatio: 1,
                ),
                itemCount: summons.summonedFourFiveStarOnly.length,
                itemBuilder: (BuildContext context, int index) {
                  final reversedIndex =
                      summons.summonedFourFiveStarOnly.length - 1 - index;

                  return SummonItem(
                      summons.summonedFourFiveStarOnly[reversedIndex]);
                }),
          );
        else
          return Center(
            child: Text(
              '"Your summon stats will be shown here"',
              style: TextStyle(fontSize: 25),
            ),
          );
      },
    );
  }
}

class SummonItem extends StatelessWidget {
  final SummonHistoryModel summon;
  const SummonItem(this.summon, {Key? key}) : super(key: key);

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
      padding: const EdgeInsets.all(5.0),
      child: Tooltip(
        decoration: BoxDecoration(
            color: (summon.rarity == '5')
                ? Colors.amber
                : (summon.rarity == '4')
                    ? Colors.purple[300]!
                    : Colors.white,
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.circular(8.0)),
        textStyle: TextStyle(color: Colors.white),
        message: '${summon.itemName}, c${summon.constellation}',
        child: Container(
          decoration: BoxDecoration(
              color: (summon.rarity == '5')
                  ? Colors.amber
                  : (summon.rarity == '4')
                      ? Colors.purple[300]!
                      : Colors.white,
              border: Border.all(color: Colors.white12),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CachedNetworkImage(
                  imageUrl: getApropUrl(ctrl, summon.item),
                  fit: BoxFit.fitHeight,
                  height: 140,
                  width: 140,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Badge(
                  toAnimate: true,
                  badgeColor: Colors.black87,
                  animationType: BadgeAnimationType.fade,
                  borderRadius: BorderRadius.circular(8),
                  badgeContent: Text(
                    ' c${summon.constellation.toString()} ',
                    style: TextStyle(
                        color: (summon.rarity == '5')
                            ? Colors.amber
                            : (summon.rarity == '4')
                                ? Colors.purple[300]!
                                : Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
