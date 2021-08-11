import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_controller.dart';
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
                    child: CircleAvatar(
                      child: Text(
                        '0',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: Colors.black38,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
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
                          ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
