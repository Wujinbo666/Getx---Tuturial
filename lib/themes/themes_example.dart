import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/themes/themes.dart';
import 'package:getx_tutorial/themes/themes_controller.dart';
import 'package:getx_tutorial/themes/themes_view.dart';

class ThemeExample extends StatelessWidget {
   ThemeExample({Key? key}) : super(key: key);
    final themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: themeController.theme,
      theme: Themes.lighTheme,
      darkTheme: Themes.darkTheme,
      home: ExampleTheme(),
    );
  }
}
