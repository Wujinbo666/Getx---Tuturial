import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'next_page.dart';

class Navigtion extends StatelessWidget {
  const Navigtion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Getx Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  var data = await Get.to(
                    () => const NextScreen(),
                    arguments: 'Hello World from Get.to()',
                    // transition: Transition.rightToLeft,
                    // duration: const Duration(seconds: 1),
                    // curve: Curves.ease,
                  );
                  debugPrint(data);
                },
                child: const Text('Get.to(NextScreen()'),
              ),
              ElevatedButton(
                onPressed: () async {
                  var data = await Get.to(
                        () => const NextScreen(),
                    arguments: 'Hello World from Get.to()',
                  );
                  debugPrint(data);
                },
                child: const Text('Get.off(NextScreen()'),
              ),
              ElevatedButton(
                onPressed: () async {
                  var data = await Get.toNamed(
                        '/next',
                    arguments: 'Hello World from /next?id=123',
                  );
                  debugPrint(data);
                },
                child: const Text('Get.toNamed(/next?id=123'),
              ),
              ElevatedButton(
                onPressed: () async {
                  var data = await Get.offNamed(
                    '/next',
                    arguments: 'Hello World from Get.offNamed()',
                  );
                  debugPrint(data);
                },
                child: const Text('Get.offNamed(NextScreen()'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
