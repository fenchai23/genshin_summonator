import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page.dart';
import 'package:get/get.dart';

void main() {
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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onInit: () async {
        // await DesktopWindow.setWindowSize(Size(1487, 1004));
        // await DesktopWindow.setMinWindowSize(Size(1487, 1004));
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SummonPage(),
    );
  }
}
