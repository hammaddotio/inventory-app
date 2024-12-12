import 'package:get/get.dart';
import 'package:inventory_app/main.dart';
import 'package:inventory_app/src/main/Home.dart';
import 'package:inventory_app/src/main/Inventory.dart';
import 'package:inventory_app/src/main/Prints.dart';
import 'package:inventory_app/src/main/ProfileScreen.dart';
import 'package:inventory_app/src/main/Shops.dart';

var APP_ROUTES = [
  GetPage(
    name: '/',
    page: () => MainApp(),
  ),
  GetPage(name: '/home', page: () => const Home()),
  GetPage(name: '/shops', page: () => const Shops()),
  GetPage(name: '/inventory', page: () => const Inventory()),
  GetPage(name: '/prints', page: () => const Prints()),
  GetPage(name: '/profile-screen', page: () => const ProfileScreen()),
];
