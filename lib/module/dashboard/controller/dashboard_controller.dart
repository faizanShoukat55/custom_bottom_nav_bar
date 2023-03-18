import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:system_limited_task/module/tabs/categories_page.dart';
import 'package:system_limited_task/module/tabs/discover_page.dart';
import 'package:system_limited_task/module/tabs/hire_page.dart';
import '../../tabs/home_page.dart';

class DashboardController extends GetxController{
  final currentIndex = 0.obs;


  List<Widget> pages = [
    const HomePage(),
    const CategoriesPage(),
    const HirePage(),
    const DiscoverPage(),

  ];

  Widget get currentPage => pages[currentIndex.value];

  /// change page in route
  Future<void> changePage(int index) async {
    currentIndex.value = index;
  }
}