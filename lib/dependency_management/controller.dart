import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  final count = 0.obs;

  void increment(){
    count.value++;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    debugPrint("Controller onInit been called");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    debugPrint("Controller onReady been called");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    debugPrint("Controller onClose been called");
  }
}