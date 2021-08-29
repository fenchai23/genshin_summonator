import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/character_banner_info_controller.dart';
import 'package:genshin_summonator/pages/summon_page/goal_rolls/goal_rolls_controller.dart';
import 'package:get/get.dart';

class GoalRolls extends StatelessWidget {
  const GoalRolls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(GoalRollsController(), permanent: true);

    final x = Get.find<CharacterBannerInfoController>();

    print('testing');
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'By Rarity',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: RarityCondition()),
                    Expanded(child: RarityCondLimitCount()),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: TextButton(
                    onPressed: () =>
                        Get.find<GoalRollsController>().simulateRollWithGoal(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 32.0),
                      child: Text(
                        'Start Goal Roll',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.orange[400],
                      onSurface: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'By Characters / Weapons',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Expanded(child: CharWeaponCondition()),
                //     Expanded(child: RarityCondLimitCount()),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RarityCondLimitCount extends StatelessWidget {
  const RarityCondLimitCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GoalRollsController>(
      init: GoalRollsController(),
      builder: (goal) => Center(
        child: Column(
          children: [
            Text(
              goal.ratingCondLimit.toString(),
              style: TextStyle(fontSize: 100, color: goal.ratingCondLimitColor),
            ),
            Text(goal.ratingCondMsg,
                style:
                    TextStyle(fontSize: 25, color: goal.ratingCondLimitColor))
          ],
        ),
      ),
    );
  }
}

class CharWeaponCondition extends StatelessWidget {
  const CharWeaponCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GoalRollsController>(
      init: GoalRollsController(),
      builder: (goal) => Container(
        width: 275,
        child: Wrap(
          children: [
            TypeAheadField(
              textFieldConfiguration: TextFieldConfiguration(
                  autofocus: true,
                  style: DefaultTextStyle.of(context)
                      .style
                      .copyWith(fontStyle: FontStyle.italic),
                  decoration: InputDecoration(border: OutlineInputBorder())),
              suggestionsCallback: (pattern) async {
                return goal.suggestions;
              },
              itemBuilder: (context, suggestion) {
                return ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('a'),
                  subtitle: Text(''),
                );
              },
              onSuggestionSelected: (suggestion) {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => ProductPage(product: suggestion)));
              },
            )
          ],
        ),
      ),
    );
  }
}

class RarityCondition extends StatelessWidget {
  const RarityCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GoalRollsController>(
      init: GoalRollsController(),
      builder: (goal) => Container(
        width: 275,
        child: Wrap(
          children: [
            Wrap(
              children: [
                StarIconStack(5),
                TextFormField(
                  controller: goal.tec5Star,
                  keyboardType: TextInputType.number,
                  onChanged: (_) => goal.setRatingCondLimit(),
                  maxLength: 1,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[1-9]')),
                  ],
                  decoration: InputDecoration(
                      hintText: 'amount of 5* on single 10 pull'),
                ),
              ],
            ),
            Wrap(
              children: [
                StarIconStack(4),
                TextFormField(
                  controller: goal.tec4Star,
                  keyboardType: TextInputType.number,
                  onChanged: (_) => goal.setRatingCondLimit(),
                  maxLength: 1,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[1-9]')),
                  ],
                  decoration: InputDecoration(
                      hintText: 'amount of 4* on single 10 pull'),
                ),
              ],
            ),
          ],
        ),
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
