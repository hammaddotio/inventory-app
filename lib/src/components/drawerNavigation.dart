import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget drawerNavigation() {
  return Drawer(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Drawer Header with user information or branding
        const DrawerHeader(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Hello, User!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'user@example.com',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),

        // Drawer items
        Expanded(
          child: ListView(
            children: [
              _drawerTile(
                icon: Icons.business_outlined,
                title: 'Shops',
                onTap: () {
                  Get.toNamed('/shops');
                },
              ),
              _drawerTile(
                icon: Icons.inventory,
                title: 'Inventory',
                onTap: () {
                  Get.toNamed('/inventory');
                },
              ),
              _drawerTile(
                icon: Icons.print,
                title: 'Prints',
                onTap: () {
                  Get.toNamed('/prints');
                },
              ),
              _drawerTile(
                icon: Icons.settings,
                title: 'Settings',
                onTap: () {
                  Get.toNamed('/settings');
                },
              ),
              _drawerTile(
                icon: Icons.logout,
                title: 'Logout',
                onTap: () {},
                color: Colors.redAccent,
              ),
            ],
          ),
        ),

        // Footer with version or app details
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'App Version: 1.0.0',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}

// Helper method for drawer tiles
Widget _drawerTile({
  required IconData icon,
  required String title,
  required VoidCallback onTap,
  Color color = Colors.black,
}) {
  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: color,
      ),
    ),
    onTap: onTap,
  );
}
