import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_tutorial/dependency_management/class.dart';
import 'package:getx_tutorial/dependency_management/controller.dart';
import 'package:getx_tutorial/navigation/next_page.dart';
import 'package:getx_tutorial/state_manage/reactive_state_management.dart';
import 'package:getx_tutorial/state_manage/simple_state_management.dart';

import 'dependency_management/detail_page.dart';
import 'dependency_management/view.dart';
import 'navigation/navigation.dart';

void main() {
  runApp(const MyApp());
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

      getPages: [
        GetPage(
          name: '/detail',
          page: () => DetailPage(),
          binding: BindingsBuilder(() {
            // Get.lazyPut<Controller>(() => Controller(), fenix: true);

            Get.lazyPut<Controller>(()=> Controller());
            Get.putAsync<AsyncTask>(() async {
              await Future.delayed(const Duration(seconds: 3));
              return AsyncTask();
            }, permanent: false);
          }),
        ),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DependencyExamle(),
    );
  }
}
