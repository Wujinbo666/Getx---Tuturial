import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/state_manage/user.dart';

class ReactiveStateManagement extends StatelessWidget {
  ReactiveStateManagement({Key? key}) : super(key: key);

  final name = RxString('');
  final isLogged = RxBool(false);
  final count = RxInt(0);
  final balance = RxDouble(0.0);
  final items = RxList<String>([]);
  final myMap = RxMap<String, int>({});

  // final user = Rx<User>(User(name: 'BienVu', age: 24));
  final user = User();

  void increment() => count.value++;

  void toUpper() {
    user.name.value = user.name.value.toUpperCase();
    user.age.value++;
    // user.update((user) {
    //   user!.name = user.name.toUpperCase();
    //   user.age = user.age + 1;
    // });
  }

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
            // Obx(
            //   () => Text(
            //     '${count.value}',
            //     style: TextStyle(fontSize: 28),
            //   ),
            // ),
            Obx(
              () => Text(
                '${user.name} ${user.age}',
                style: TextStyle(fontSize: 28),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: () => increment(),
      // ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_upward),
        onPressed: () => toUpper(),
      ),
    );
  }
}
