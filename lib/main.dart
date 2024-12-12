import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_app/src/components/bottomNavigation.dart';
import 'package:inventory_app/src/controllers/bottom_nav_controller.dart';
import 'package:inventory_app/src/main/Prints.dart';
import 'package:inventory_app/src/main/ProfileScreen.dart';
import 'package:inventory_app/src/main/Home.dart';
import 'package:inventory_app/src/main/Inventory.dart';
import 'package:inventory_app/src/main/Shops.dart';
import 'package:inventory_app/src/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: APP_ROUTES,
      home: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  // Initialize BottomNavController
  final BottomNavController controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.updateIndex(index); // Sync with the bottom navigation bar
        },
        children: const [
          Home(),
          Shops(),
          Inventory(),
          Prints(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => bottomNavigation(),
      ),
    );
  }
}
