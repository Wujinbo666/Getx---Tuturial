import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/themes/themes.dart';
import 'package:getx_tutorial/themes/themes_controller.dart';

class ExampleTheme extends StatelessWidget {
  ExampleTheme({Key? key}) : super(key: key);
  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Change Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Getx Theme',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  if (Get.isDarkMode) {
                    themeController.changeThemeMode(ThemeMode.light);
                    // themeController.changeTheme(Themes.lighTheme);
                    themeController.saveTheme(false);
                  } else {
                    themeController.changeThemeMode(ThemeMode.dark);
                    // themeController.changeTheme(Themes.darkTheme);
                    themeController.saveTheme(true);
                  }
                },
                child: const Text('Change Theme')),
          ],
        ),
      ),
    );
  }
}
