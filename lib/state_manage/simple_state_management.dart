import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/state_manage/simple_state_controller.dart';

class SimpleStateManagement extends StatelessWidget {
  const SimpleStateManagement({Key? key}) : super(key: key);

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
            GetBuilder<Controller>(
                init: Controller(),
                builder: (controller) => Text(
                      '${controller.counter}',
                      style: TextStyle(fontSize: 28),
                    ))
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: () => increment(),
      // ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          Get.find<Controller>().increment();
        },
      ),
    );
  }
}
