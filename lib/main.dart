import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_tutorial/dependency_management/class.dart';
import 'package:getx_tutorial/dependency_management/controller.dart';
import 'package:getx_tutorial/navigation/next_page.dart';
import 'package:getx_tutorial/state_manage/reactive_state_management.dart';
import 'package:getx_tutorial/state_manage/simple_state_management.dart';
import 'package:getx_tutorial/themes/themes.dart';
import 'package:getx_tutorial/themes/themes_example.dart';
import 'package:getx_tutorial/translations/messages.dart';
import 'package:getx_tutorial/translations/translations_view.dart';

import 'dependency_management/detail_page.dart';
import 'dependency_management/view.dart';
import 'navigation/navigation.dart';

void main() async {
  await GetStorage.init();
  runApp(ThemeExample());
  // WidgetsFlutterBinding.ensureInitialized();
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: '/',
      // getPages: [
      //   GetPage(name: '/', page: () => const Navigtion()),
      //   GetPage(name: '/next', page: () => const NextScreen()),
      // ],
      // routingCallback: (routing) {
      //   if (routing!.current == '/next') {
      //     debugPrint('Open Ads');
      //   }
      // },

      // getPages: [
      //   GetPage(
      //     name: '/detail',
      //     page: () => DetailPage(),
      //     binding: BindingsBuilder(() {
      //       // Get.lazyPut<Controller>(() => Controller(), fenix: true);
      //
      //       Get.lazyPut<Controller>(()=> Controller());
      //       Get.putAsync<AsyncTask>(() async {
      //         await Future.delayed(const Duration(seconds: 3));
      //         return AsyncTask();
      //       }, permanent: false);
      //     }),
      //   ),
      // ],
      // translations: Messages(),
      // // locale: Get.deviceLocale,
      // locale: const Locale('en', 'America'),
      // fallbackLocale: const Locale('en', 'America'),
      debugShowCheckedModeBanner: false,
      home: ThemeExample(),
    );
  }
}
