import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_controller.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_model.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

class AllBannersInfo extends StatelessWidget {
  const AllBannersInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 12.0, left: 12.0, right: 12.0, bottom: 12.0),
      child: GetBuilder<SummonHistoryController>(
        init: SummonHistoryController(),
        builder: (summon) => GetBuilder<BannerInfoController>(
          init: BannerInfoController(),
          builder: (banner) => ListView.builder(
            itemCount: banner.bannerList.values.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext ctx, index) {
              final String fileName =
                  basename(banner.bannerList.values.elementAt(index).path);

              final String fiveStarCharIcon =
                  BannerInfoModel.eventCharacters[fileName]['5'][0];

              return InkWell(
                onTap: () => banner.setBannerIndex(index),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: (banner.bannerIndex == index)
                            ? Border.all(color: Colors.white70, width: 7)
                            : Border.all(color: Colors.black12, width: 5)),
                    child: CachedNetworkImage(
                      imageUrl: (summon.hasBannerPoolLoaded)
                          ? summon.eventPool.images[fiveStarCharIcon]['icon']
                          : "https://static.wikia.nocookie.net/gensin-impact/images/6/6a/Character_Dainsleif_Portrait.png/revision/latest/scale-to-width-down/1000?cb=20210321222051",
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
