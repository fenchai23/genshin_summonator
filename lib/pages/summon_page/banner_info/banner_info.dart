import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_controller.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_model.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:get/get.dart';

class BannerInfo extends StatelessWidget {
  const BannerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BannerInfoController>(
      init: BannerInfoController(),
      builder: (banner) => Stack(
        children: [
          GetBuilder<BannerInfoController>(
            init: BannerInfoController(),
            builder: (banner) => banner.characterBanners.length > 0
                ? Stack(
                    children: [
                      Container(
                        height: 371,
                        width: 750,
                        child: Image.asset(
                          banner.characterBanners.values
                              .elementAt(banner.bannerIndex)
                              .path,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Container(
                        height: 371,
                        width: 750,
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
                  )
                : Container(),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GetBuilder<SummonHistoryController>(
                init: SummonHistoryController(),
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
                        color: Colors.blueGrey,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blueGrey.withOpacity(0.65),
                        foregroundColor: Colors.white70,
                        child: Text(
                          summons.summoned.length.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Tooltip(
                      padding: EdgeInsets.all(10.0),
                      message:
                          '5 Star Pity: ${summons.fiveStarPityCount.toString()}',
                      textStyle: TextStyle(fontSize: 20, color: Colors.white70),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.amber.withOpacity(0.65),
                        foregroundColor: Colors.white70,
                        child: Text(
                          summons.fiveStarPityCount.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Tooltip(
                      padding: EdgeInsets.all(10.0),
                      message:
                          '4 Star Pity: ${summons.fourStarPityCount.toString()}',
                      textStyle: TextStyle(fontSize: 20, color: Colors.white70),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.purple.withOpacity(0.8),
                        foregroundColor: Colors.white70,
                        child: Text(
                          summons.fourStarPityCount.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
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
                      width: 50,
                    ),
                  if (!((banner.bannerIndex + 1) >=
                      banner.characterBanners.length))
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
                      width: 50,
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: Wrap(
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
                    onTap: () => Get.find<SummonHistoryController>().roll(1),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                BannerInfoModel.currency['intertwined_fate']!,
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
                    onTap: () => Get.find<SummonHistoryController>().roll(10),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                BannerInfoModel.currency['intertwined_fate']!,
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
            ),
          ),
        ],
      ),
    );
  }
}
