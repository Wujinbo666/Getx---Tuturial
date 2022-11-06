import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/translations/translattions_controller.dart';

class Example extends StatelessWidget {
  Example({Key? key}) : super(key: key);

  final messagesController = Get.put(MessagesController());

  @override
  Widget build(BuildContext context) {
    var products = <String>[];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Internationlization'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 28),
            ),
            ElevatedButton(
              onPressed: () {
                messagesController.changeLanguage('urdu', 'Pakistan');
              } ,
              child: const Text('Urdu'),
            ),
            ElevatedButton(
              onPressed: () => messagesController.changeLanguage('en', 'America'),
              child: const Text('English'),
            ),
            ElevatedButton(
              onPressed: () => messagesController.changeLanguage('arabic', 'Saudi Arabia'),
              child: const Text('Arabic'),
            ),
          ],
        ),
      ),
    );
  }
}
