import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_app/src/components/drawerNavigation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      drawer: drawerNavigation(),
      body: const Center(
        child: Text('Home', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
