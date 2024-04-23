import 'package:get/get.dart';
import 'package:zeal_new/controllers/navigator_controller.dart';
import 'package:zeal_new/controllers/tab_controller.dart';

class AllBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationController>(() => NavigationController());
    Get.lazyPut<CustomTabController>(() => CustomTabController());
  }
}
