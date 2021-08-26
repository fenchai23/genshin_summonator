import 'dart:convert';
import 'dart:io';
import 'package:genshin_summonator/models/SummonPool.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_model.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

class BannerInfoController extends GetxController {
  bool hasBannerPoolLoaded = false;
  Map<String, FileSystemEntity> bannerList = {};
  int bannerIndex = 0;
  Map<String, dynamic> currentBannerPool = {};
  List<String> fourStarCharPool = []; // for event and std banner
  List<String> fourStarWeaponPool = []; // for std & future weapon banner
  String bannerType = 'character';
  late EventPool eventPool;
  late StandardPool stdPool;

  @override
  Future<void> onInit() async {
    // final List<FileSystemEntity> fileList =
    //     await Directory('assets/images/banners/event/').list().toList();

    final List fileList = [
      'assets/images/banners/standard/standard_banner.png',
      'assets/images/banners/event/2020-09-28_BalladInGoblets.jpg',
      'assets/images/banners/event/2020-10-19_Sparkling_Steps.jpg',
      'assets/images/banners/event/2020-11-10_Farewell_of_Snezhnaya.jpg',
      'assets/images/banners/event/2020-12-02_Gentry_of_Hermitage.jpg',
      'assets/images/banners/event/2020-12-23_Secretum_Secretorum.png',
      'assets/images/banners/event/2021-01-13_Adrift_in_the_Harbor.jpeg',
      'assets/images/banners/event/2021-02-03_Invitation_to_Mundane_Life.jpg',
      'assets/images/banners/event/2021-02-17_Dance_of_Lanterns.jpg',
      'assets/images/banners/event/2021-03-02-MomentOfBloom.jpg',
      'assets/images/banners/event/2021-03-16_BalladInGoblets.jpg',
      'assets/images/banners/event/2021-04-06_Farewell_of_Snezhnaya.jpg',
      'assets/images/banners/event/2021-04-28_Gentry_of_Hermitage.jpg',
      'assets/images/banners/event/2021-05-19_Born_of_Ocean_Swell.jpg',
      'assets/images/banners/event/2021-07-03_Leaves_in_the_Wind.png',
      'assets/images/banners/event/2021-07-22_The_Herons_Court.jpeg',
      'assets/images/banners/event/2021-08-10_Wish_Tapestry_of_Golden_Flames.png',
    ];

    fileList.reversed.forEach((e) {
      bannerList[basename(e)] = File(e);
    });

    currentBannerPool =
        BannerInfoModel.eventCharacters[bannerList.keys.elementAt(bannerIndex)];

    await loadCharEventData();
    await loadStdEventData();

    hasBannerPoolLoaded = true;

    update();

    super.onInit();
  }

  Future<void> loadCharEventData() async {
    try {
      final rawBannerData =
          await File("assets/genshin/index/banners.json").readAsString();

      final bannerData = json.decode(rawBannerData);

      final List<dynamic> threeStarWeaponPool =
          bannerData['event_pool']['weapons']['3'];
      final List<dynamic> fourStarWeaponPool =
          bannerData['event_pool']['weapons']['4'];
      final List<dynamic> fourStarCharPool =
          bannerData['event_pool']['characters']['4'];
      final List<dynamic> fiveStarCharPool =
          bannerData['event_pool']['characters']['5'];

      final Map<dynamic, dynamic> nameMap = bannerData['namemap'];

      final characterImagesData = json.decode(
          await File("assets/genshin/image/characters.json").readAsString());

      final weaponImagesData = json.decode(
          await File("assets/genshin/image/weapons.json").readAsString());

      Map<dynamic, dynamic> imagesData = {};

      imagesData.addAll(characterImagesData);
      imagesData.addAll(weaponImagesData);

      eventPool = EventPool(fiveStarCharPool, fourStarCharPool,
          threeStarWeaponPool, fourStarWeaponPool, nameMap, imagesData);

      Get.find<BannerInfoController>().prepBannerPool();
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  Future<void> loadStdEventData() async {
    try {
      final rawBannerData =
          await File("assets/genshin/index/banners.json").readAsString();

      final bannerData = json.decode(rawBannerData);

      final List<dynamic> threeStarWeaponPool =
          bannerData['standard_pool']['weapons']['3'];
      final List<dynamic> fourStarWeaponPool =
          bannerData['standard_pool']['weapons']['4'];
      final List<dynamic> fourStarCharPool =
          bannerData['standard_pool']['characters']['4'];
      final List<dynamic> fiveStarCharPool =
          bannerData['standard_pool']['characters']['5'];

      final Map<dynamic, dynamic> nameMap = bannerData['namemap'];

      final characterImagesData = json.decode(
          await File("assets/genshin/image/characters.json").readAsString());

      final weaponImagesData = json.decode(
          await File("assets/genshin/image/weapons.json").readAsString());

      Map<dynamic, dynamic> imagesData = {};

      imagesData.addAll(characterImagesData);
      imagesData.addAll(weaponImagesData);

      stdPool = StandardPool(fiveStarCharPool, fourStarCharPool,
          threeStarWeaponPool, fourStarWeaponPool, nameMap, imagesData);

      Get.find<BannerInfoController>().prepBannerPool();
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  void chooseBannerType() {
    //TODO: just a temp hack, will not work if I add weapon banners in the future
    if (bannerIndex == bannerList.length)
      bannerType = 'standard';
    else
      bannerType = 'character';
  }

  void nextBanner() {
    final int next = bannerIndex - 1;
    if ((next >= 0)) bannerIndex = bannerIndex - 1;

    currentBannerPool =
        BannerInfoModel.eventCharacters[bannerList.keys.elementAt(bannerIndex)];

    chooseBannerType();
    prepBannerPool();

    update();
  }

  void prevBanner() {
    final int next = bannerIndex + 1;

    if (!(next >= bannerList.length)) bannerIndex = bannerIndex + 1;

    currentBannerPool =
        BannerInfoModel.eventCharacters[bannerList.keys.elementAt(bannerIndex)];

    chooseBannerType();
    prepBannerPool();

    update();
  }

  void setBannerIndex(int index) {
    bannerIndex = index;

    currentBannerPool =
        BannerInfoModel.eventCharacters[bannerList.keys.elementAt(bannerIndex)];

    update();
  }

  void prepBannerPool() {
    if (bannerType == 'character') {
      final List<dynamic> _fourStarCharPool = eventPool.fourStarCharacterPool;

      _fourStarCharPool.forEach((e) {
        if (!currentBannerPool['4'].contains(e)) fourStarCharPool.add(e);
      });
    } else if (bannerType == 'standard') {
      final List<dynamic> _fourStarCharPool = stdPool.fourStarCharacterPool;

      _fourStarCharPool.forEach((e) {
        if (!currentBannerPool['4'].contains(e)) fourStarCharPool.add(e);
      });

      final List<dynamic> _fourStarWeaponPool = stdPool.fourStarWeaponPool;

      _fourStarWeaponPool.forEach((e) {
        fourStarWeaponPool.add(e);
      });
    }
  }
}
