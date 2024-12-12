import 'package:flutter/material.dart';
import 'package:inventory_app/src/components/drawerNavigation.dart';

class Shops extends StatelessWidget {
  const Shops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shops'),
        centerTitle: true,
      ),
      drawer: drawerNavigation(),
      body: const Center(
        child: Text('Shops', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
