import 'package:flutter/material.dart';
import 'package:inventory_app/src/components/drawerNavigation.dart';

class Prints extends StatelessWidget {
  const Prints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prints'),
        centerTitle: true,
      ),
      drawer: drawerNavigation(),
      body: const Center(
        child: Text('Prints', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
