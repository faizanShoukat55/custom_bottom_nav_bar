import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:system_limited_task/module/dashboard/controller/dashboard_controller.dart';
import 'package:system_limited_task/module/main_drawer/widgets/drawer_link_widget.dart';

import '../../../routes/app_routes.dart';


class MainDrawerWidget extends GetView<DashboardController> {
  const MainDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const SizedBox(height: 40,),
          DrawerLinkWidget(
            icon: Icons.home_outlined,
            text: "Home",
            onTap: (e) async {
              Get.back();
              await controller.changePage(0);
            },
          ),
          DrawerLinkWidget(
            icon: Icons.folder_special_outlined,
            text: "Categories",
            onTap: (e) async {
              //Get.offAndToNamed(Routes.CATEGORIES);
              Get.back();
              await controller.changePage(1);
            },
          ),


          DrawerLinkWidget(
            icon: Icons.assignment_outlined,
            text: "Hire",
            onTap: (e) async {
              Get.back();
              await controller.changePage(2);
            },
          ),
          DrawerLinkWidget(
            icon: Icons.account_balance_wallet_outlined,
            text: "Discover",
            onTap: (e) async {
              Get.back();
              await controller.changePage(3);
            },
          ),

          const Divider(height: 1,color: Colors.black54,),

          DrawerLinkWidget(
            icon: Icons.help_outline,
            text: "Help & FAQ",
            onTap: (e) async {
              await Get.offAndToNamed(Routes.helpPage);
            },
          ),

        ],
      ),
    );
  }
}