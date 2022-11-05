import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Next Screen'),
            Text('argument: ${Get.arguments}'),
            Text('argument: ${Get.parameters['id']}'),

            ElevatedButton(
              onPressed: () {
                Get.back(result: 'Success', closeOverlays: false);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
