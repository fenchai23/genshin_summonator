import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_controller.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:get/get.dart';

class BannerInfo extends StatelessWidget {
  const BannerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BannerInfoController>(
      init: BannerInfoController(),
      builder: (banner) => Container(
        child: Column(
          children: [
            Stack(
              children: [
                GetBuilder<BannerInfoController>(
                  init: BannerInfoController(),
                  builder: (banner) => banner.characterBanners.length > 0
                      ? AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image.asset(
                            banner.characterBanners.values
                                .elementAt(banner.bannerIndex)
                                .path,
                            fit: BoxFit.fill,
                          ),
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
                        direction: Axis.vertical,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blueGrey.withOpacity(0.65),
                            foregroundColor: Colors.white70,
                            child: Text(
                              summons.summoned.length.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.amber.withOpacity(0.65),
                            foregroundColor: Colors.white70,
                            child: Text(
                              summons.fiveStarPityCount.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.purple.withOpacity(0.8),
                            foregroundColor: Colors.white70,
                            child: Text(
                              summons.fourStarPityCount.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white,
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
                              color: Colors.white,
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
                  bottom: 0,
                  right: 0,
                  child: Wrap(
                    children: [
                      InkWell(
                        child: IconButton(
                            onPressed: () =>
                                Get.find<SummonHistoryController>().roll(1),
                            icon: Icon(Icons.check_circle)),
                      ),
                      InkWell(
                        child: IconButton(
                            onPressed: () =>
                                Get.find<SummonHistoryController>().roll(10),
                            icon: Icon(Icons.check_circle)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
