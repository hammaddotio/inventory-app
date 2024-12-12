import 'package:flutter/material.dart';
import 'package:inventory_app/src/components/drawerNavigation.dart';

class Inventory extends StatelessWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventory'),
        centerTitle: true,
      ),
      drawer: drawerNavigation(),
      body: const Center(
        child: Text('Inventory', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
