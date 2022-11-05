import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/dependency_management/controller.dart';

class DependencyExamle extends StatelessWidget {
  DependencyExamle({Key? key}) : super(key: key);

  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Reactive State'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(() => Text(
            //   '${controller.count.value}',
            //   style: TextStyle(fontSize: 28),
            // ),),

            ElevatedButton(
              onPressed: () {
                Get.toNamed('/detail');
              },
              child: const Text('Detail Page'),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: () {
      //     Get.find<Controller>().increment();
      //   },
      // ),
    );
  }
}
