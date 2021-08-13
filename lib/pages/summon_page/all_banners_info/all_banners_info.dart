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
      padding: const EdgeInsets.all(12.0),
      child: GetBuilder<BannerInfoController>(
        init: BannerInfoController(),
        builder: (banner) => GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: banner.characterBanners.values.length,
          itemBuilder: (BuildContext ctx, index) {
            final String fileName =
                basename(banner.characterBanners.values.elementAt(index).path);

            final String fiveStarCharIcon =
                BannerInfoModel.eventCharacters[fileName]['5'];

            return InkWell(
              onTap: () => banner.setBannerIndex(index),
              child: Container(
                decoration: BoxDecoration(
                    border: (banner.bannerIndex == index)
                        ? Border.all(color: Colors.red[400]!, width: 5)
                        : Border.all(color: Colors.white70, width: 5)),
                child: CachedNetworkImage(
                  imageUrl: Get.find<SummonHistoryController>()
                      .eventPool
                      .images[fiveStarCharIcon]['icon'],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
