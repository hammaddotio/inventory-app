import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  // Reactive variable to track the selected index
  var selectedIndex = 0.obs;

  // PageView controller
  final PageController pageController = PageController();

  // Method to update the index
  void updateIndex(int index) {
    selectedIndex.value = index;
  }

  @override
  void onClose() {
    pageController.dispose(); // Dispose of the controller
    super.onClose();
  }
}
