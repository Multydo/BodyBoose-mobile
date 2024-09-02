import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:BodyBoost/Routes/AppRoute.dart'; // Adjust import according to your project structure

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange[900],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      width: double.infinity,
      height: 70,
      padding: EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.offAllNamed(AppRoute.home); // Navigate to Home and clear the stack
            },
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              elevation: 0,
              shape: CircleBorder(),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.blueGrey[700],
              child: Icon(
                Icons.home,
                color: Colors.orange[900],
              ),
            ),
          ),
          _buildNavItem(icon: Icons.video_collection, route: AppRoute.exercises),
          _buildNavItem(icon: Icons.person, route: AppRoute.account),
          _buildNavItem(icon: Icons.settings, route: AppRoute.settings),
        ],
      ),
    );
  }

  Widget _buildNavItem({required IconData icon, required String route}) {
    return ElevatedButton(
      onPressed: () {
        if (Get.currentRoute != AppRoute.home) {
          Get.offNamed(route);
        } else {
          Get.toNamed(route);
        }
      },
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.transparent,
        elevation: 0,
        shape: CircleBorder(),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.blueGrey[700],
        child: Icon(
          icon,
          color: Colors.orange[900],
        ),
      ),
    );
  }
}
