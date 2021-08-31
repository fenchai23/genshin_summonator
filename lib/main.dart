import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page.dart';
import 'package:get/get.dart';

// TODO: add summon animation only when doing 1 and 10 pulls
// TODO: add a summon video?
// TODO: add booba sword video as splashpage
// TODO add auto fetch and update banners.json and BannerInfoModel

void main() async {
  runApp(MyApp());

  DartVLC.initialize();

  doWhenWindowReady(() {
    final initialSize = Size(1200, 1004);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.title = 'Genshin Summonator';
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SummonPage(),
    );
  }
}
