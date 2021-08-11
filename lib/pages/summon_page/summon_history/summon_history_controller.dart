import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';

class SummonHistoryController extends GetxController {
  List fourStarCharPool = [];
  List fiveStarCharPool = [];
  List threeStarWeaponPool = [];
  List fourStarWeaponPool = [];
  Map<int, String> summonsDone = {};

  @override
  Future<void> onInit() async {
    await loadPoolData();

    super.onInit();
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

      Map<int, String> tempSummonsDone = {};

      fourStarWeaponPool.asMap().forEach((key, value) {
        tempSummonsDone[key] = value;
      });

      // reverse summons
      final List<int> reversedKeys =
          tempSummonsDone.keys.toList().reversed.toList();

      reversedKeys.forEach((int e) {
        summonsDone[e] =
            tempSummonsDone[e]!; // ! means I can guarantee this wont be null
      });

      update();
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
