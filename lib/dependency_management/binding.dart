import 'package:get/get.dart';
import 'package:getx_tutorial/dependency_management/controller.dart';

class DetailBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<Controller>(() => Controller());
  }
}
