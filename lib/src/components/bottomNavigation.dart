import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_app/src/controllers/bottom_nav_controller.dart';

Widget bottomNavigation() {
  final BottomNavController controller = Get.put(BottomNavController());
  return BottomNavigationBar(
    backgroundColor: Colors.blue,
    currentIndex: controller.selectedIndex.value,
    onTap: (index) {
      controller.pageController.jumpToPage(index); // Navigate to the page
      controller.updateIndex(index); // Update the selected index
    },
    items: const [
      BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(Icons.business),
        label: 'Shops',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(Icons.inventory),
        label: 'Inventory',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(Icons.print),
        label: 'Bills',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
  );
}
