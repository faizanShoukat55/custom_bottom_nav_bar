import 'package:get/get.dart';
import 'package:system_limited_task/module/dashboard/controller/dashboard_controller.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }

}