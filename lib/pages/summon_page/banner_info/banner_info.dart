import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_controller.dart';
import 'package:get/get.dart';

class BannerInfo extends StatelessWidget {
  const BannerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              GetBuilder<BannerInfoController>(
                init: BannerInfoController(),
                builder: (val) => val.characterBanners.length > 0
                    ? Image.asset(
                        val.characterBanners.values
                            .elementAt(val.characterBanners.length -
                                val.bannerIndex.value)
                            .path,
                        fit: BoxFit.fitWidth,
                      )
                    : Container(),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.menu))),
              Positioned(
                top: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Obx(
                      () => Text(
                        Get.find<BannerInfoController>()
                            .bannerIndex
                            .value
                            .toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    backgroundColor: Colors.black38,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Wrap(
                  spacing: 20,
                  children: [
                    IconButton(
                      onPressed: () =>
                          Get.find<BannerInfoController>().nextBanner(),
                      icon: Icon(
                        Icons.navigate_before_rounded,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () =>
                          Get.find<BannerInfoController>().prevBanner(),
                      icon: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
