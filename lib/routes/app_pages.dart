import 'package:get/get.dart' show GetPage, Transition;
import 'package:system_limited_task/module/help_page/help_page.dart';
import '../module/dashboard/binding/dashboard_binding.dart';
import '../module/dashboard/view/dashboard.dart';
import 'app_routes.dart';

class AppPages {
   static const initial = Routes.dashBoard;
  static final routes = [
    GetPage(
      name: Routes.dashBoard,
      page: () => const Dashboard(),
      binding: DashboardBinding(),
    ),

    GetPage(
      name: Routes.helpPage,
      page: () => const HelpPage(),
    ),



  ];
}
