import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info_model.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/character_banner_info_controller.dart';
import 'package:get/get.dart';

class GoalRolls extends StatelessWidget {
  const GoalRolls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final x = Get.find<CharacterBannerInfoController>();

    print(x.currentBannerPool);
    print(x.eventPool.wonfiveStarCharacterPool);
    print(x.eventPool.lostfiveStarCharacterPool);

    return Scaffold(
      appBar: AppBar(
        title: Text('Select you roll goals'),
        leading: IconButton(
            onPressed: () => Get.back(), icon: Icon(Icons.arrow_downward)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RarityCondition(),
          ),
        ],
      ),
    );
  }
}

class RarityCondition extends StatelessWidget {
  const RarityCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController tec1 = TextEditingController();
    final TextEditingController tec2 = TextEditingController();
    return Container(
      width: 400,
      child: Wrap(
        children: [
          Wrap(
            children: [
              StarIconStack(5),
              TextFormField(
                controller: tec1,
                keyboardType: TextInputType.number,
                maxLength: 1,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                decoration:
                    InputDecoration(hintText: 'amount of 5* on single 10 pull'),
              ),
            ],
          ),
          Wrap(
            children: [
              StarIconStack(4),
              TextFormField(
                controller: tec2,
                keyboardType: TextInputType.number,
                maxLength: 1,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                decoration:
                    InputDecoration(hintText: 'amount of 4* on single 10 pull'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StarIconStack extends StatelessWidget {
  final int starAmount;
  const StarIconStack(this.starAmount, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        starAmount,
        (index) => Image.asset(
          'assets/genshin/res/star.png',
          width: 55,
        ),
      ),
    );
  }
}
