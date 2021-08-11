import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';

class SummonHistoryController extends GetxController {
  List fourStarCharPool = [];
  List fiveStarCharPool = [];
  List threeStarWeaponPool = [];
  List fourStarWeaponPool = [];
  Map<int, String> summoned = {};
  int fourStarPityCount = 0;
  int fiveStarPityCount = 0;

  @override
  Future<void> onInit() async {
    await loadPoolData();

    super.onInit();
  }

  void summon(int amount) {
    // logic here to increase pity and add list to summoned

    update();
  }

  Future<void> loadPoolData() async {
    try {
      final jsonRawData =
          await File("assets/genshin/index/banners.json").readAsString();

      final jsonData = json.decode(jsonRawData);

      threeStarWeaponPool = jsonData['standard_pool']['weapons']['3'];
      fourStarWeaponPool = jsonData['standard_pool']['weapons']['4'];
      fourStarCharPool = jsonData['standard_pool']['characters']['4'];
      fiveStarCharPool = jsonData['standard_pool']['characters']['5'];

      Map<int, String> tempSummoned = {};

      fourStarWeaponPool.asMap().forEach((key, value) {
        tempSummoned[key] = value;
      });

      // reverse summons
      final List<int> reversedKeys =
          tempSummoned.keys.toList().reversed.toList();

      reversedKeys.forEach((int e) {
        summoned[e] =
            tempSummoned[e]!; // ! means I can guarantee this wont be null
      });

      update();
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
