import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/summon_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onInit: () async {
        await DesktopWindow.setWindowSize(Size(1487, 1004));
        await DesktopWindow.setMinWindowSize(Size(1487, 1004));
        // await DesktopWindow.setMaxWindowSize(Size(1000, 900));
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
