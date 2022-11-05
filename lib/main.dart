import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_tutorial/navigation/next_page.dart';
import 'package:getx_tutorial/state_manage/reactive_state_management.dart';
import 'package:getx_tutorial/state_manage/simple_state_management.dart';

import 'navigation/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Navigtion()),
        GetPage(name: '/next', page: () => const NextScreen()),
      ],
      routingCallback: (routing) {
        if (routing!.current == '/next') {
          debugPrint('Open Ads');
        }
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SimpleStateManagement(),
    );
  }
}
