import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/banner_info/banner_info.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history.dart';

class SummonPage extends StatelessWidget {
  const SummonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Wrap(
        spacing: 10,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Text('1'),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Text('10'),
          ),
        ],
      ),
      body: Scrollbar(
        child: Stack(
          children: [
            Column(
              children: [
                BannerInfo(),
                Divider(),
                Flexible(flex: 5, child: SummonHistory()),
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            ),
          ],
        ),
      ),
    );
  }
}
