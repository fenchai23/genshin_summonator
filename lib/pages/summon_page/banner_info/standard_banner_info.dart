import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_model.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/standard_banner_info_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/standard_summon_history_controller.dart';
import 'package:get/get.dart';

class StandardBannerInfo extends StatelessWidget {
  const StandardBannerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StandardBannerInfoController>(
      init: StandardBannerInfoController(),
      builder: (banner) => Stack(
        children: [
          BannerImage(banner),
          Positioned(
            top: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SummonCounts(),
            ),
          ),
          Positioned(bottom: 5, right: 5, child: SummonButtons()),
        ],
      ),
    );
  }
}

class SummonCounts extends StatelessWidget {
  const SummonCounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StandardSummonHistoryController>(
      autoRemove: false,
      init: StandardSummonHistoryController(),
      builder: (summons) => Wrap(
        spacing: 10,
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.vertical,
        children: [
          Tooltip(
            padding: EdgeInsets.all(10.0),
            message:
                'Total Amount of Rolls: ${summons.summoned.length.toString()}',
            textStyle: TextStyle(fontSize: 20, color: Colors.white70),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
            child: Badge(
              toAnimate: false,
              shape: BadgeShape.square,
              badgeColor: Colors.blue.withOpacity(0.65),
              borderRadius: BorderRadius.circular(8),
              badgeContent: Text(
                summons.summoned.length.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white70),
              ),
            ),
          ),
          Tooltip(
            padding: EdgeInsets.all(10.0),
            message: '5 Star Pity: ${summons.fiveStarPityCount.toString()}',
            textStyle: TextStyle(fontSize: 20, color: Colors.white70),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
            child: Badge(
              toAnimate: false,
              shape: BadgeShape.square,
              badgeColor: Colors.amber.withOpacity(0.65),
              borderRadius: BorderRadius.circular(8),
              badgeContent: Text(
                summons.fiveStarPityCount.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white70),
              ),
            ),
          ),
          Tooltip(
            padding: EdgeInsets.all(10.0),
            message: '4 Star Pity: ${summons.fourStarPityCount.toString()}',
            textStyle: TextStyle(fontSize: 20, color: Colors.white70),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
            child: Badge(
              toAnimate: false,
              shape: BadgeShape.square,
              badgeColor: Colors.purple.withOpacity(0.8),
              borderRadius: BorderRadius.circular(8),
              badgeContent: Text(
                summons.fourStarPityCount.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white70),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SummonButtons extends StatelessWidget {
  const SummonButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: [
        Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          clipBehavior: Clip.antiAlias,
          color: Colors.transparent,
          child: InkWell(
            hoverColor: Colors.blue[300],
            onTap: () => Get.find<StandardSummonHistoryController>().roll(1),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: BannerInfoModel.currency['intertwined_fate']!,
                    height: 50,
                  ),
                  Text(
                    'x 1',
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ),
        Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          clipBehavior: Clip.antiAlias,
          color: Colors.transparent,
          child: InkWell(
            hoverColor: Colors.amber[300],
            onTap: () => Get.find<StandardSummonHistoryController>().roll(10),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: BannerInfoModel.currency['intertwined_fate']!,
                    height: 50,
                  ),
                  Text(
                    'x 10',
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BannerImage extends StatelessWidget {
  final StandardBannerInfoController banner;
  const BannerImage(this.banner, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 320,
          width: 750,
          child: Image.asset(
            banner.stdBannerFile.path,
            fit: BoxFit.fitWidth,
          ),
        ),
        Container(
          height: 320,
          width: 650,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0x00000000),
                const Color(0x00000000),
                const Color(0x00000000),
                const Color(0x00000000),
                const Color(0x00000000),
                const Color(0xCC000000),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
