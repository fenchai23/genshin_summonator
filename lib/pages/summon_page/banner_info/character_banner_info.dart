import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/all_banners_info/all_banners_info.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/character_banner_info_controller.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_model.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/universal_banner_widgets.dart';
import 'package:genshin_summonator/pages/summon_page/goal_rolls/goal_rolls_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/character_summon_history_controller.dart';
import 'package:get/get.dart';

class CharacterBannerInfo extends StatelessWidget {
  const CharacterBannerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CharacterBannerInfoController>(
      init: CharacterBannerInfoController(),
      autoRemove: false,
      builder: (banner) => GetBuilder<GoalRollsController>(
        init: GoalRollsController(),
        autoRemove: false,
        builder: (goalCtrl) => Stack(
          children: [
            (banner.bannerList.length > 0)
                ? Column(
                    children: [
                      BannerImage(banner),
                      Container(
                        color: Colors.orange[400],
                        width: 650,
                        height: 150,
                        child: AllBannersInfo(banner),
                      ),
                    ],
                  )
                : Container(),
            Positioned(
              top: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SummonCounts(),
              ),
            ),
            Visibility(
              visible: (goalCtrl.goalStatus != GoalStatus.started),
              child: Positioned(
                bottom: 150,
                left: 0,
                child: Row(
                  children: [
                    BannerNavigation(banner),
                    SizedBox(width: 10.0),
                    BannerChooser(),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: (goalCtrl.goalStatus != GoalStatus.started),
              child: Positioned(
                bottom: 155,
                right: 5,
                child: SummonButtons(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SummonCounts extends StatelessWidget {
  const SummonCounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CharacterSummonHistoryController>(
      autoRemove: false,
      init: CharacterSummonHistoryController(),
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

class BannerNavigation extends StatelessWidget {
  final CharacterBannerInfoController banner;
  const BannerNavigation(this.banner, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Wrap(
        children: [
          if ((banner.bannerIndex - 1) >= 0)
            InkWell(
              onTap: () => banner.nextBanner(),
              child: Icon(
                Icons.navigate_before_rounded,
                color: Colors.white70,
                size: 50,
              ),
            )
          else
            Container(
              width: 2.50,
            ),
          if (!((banner.bannerIndex + 1) >= banner.bannerList.length))
            InkWell(
              onTap: () => banner.prevBanner(),
              child: Icon(
                Icons.navigate_next_rounded,
                color: Colors.white70,
                size: 50,
              ),
            )
          else
            Container(
              width: 2.50,
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
            onTap: () => Get.find<CharacterSummonHistoryController>().roll(1),
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
            onTap: () => Get.find<CharacterSummonHistoryController>().roll(10),
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
  final CharacterBannerInfoController banner;
  const BannerImage(this.banner, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 320,
          width: 750,
          child: Image.asset(
            banner.bannerList.values.elementAt(banner.bannerIndex).path,
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
