import 'package:BodyBoost/Controllers/ExercisesController.dart';
import 'package:BodyBoost/Controllers/SettingsController.dart';
import 'package:BodyBoost/widgets/bottomNavbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Exercises extends GetView<ExercisesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Workouts", style:
            TextStyle(
                color: Colors.blueGrey[50]
            ),
            ),

          ],
        ),
        toolbarHeight: 90,
      ),

      body: Stack(
        children: [
          Container(
            color: Colors.blueGrey[800],
          ),
          Column(
            children: [
              // Main content area - replace with actual content as needed
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20), // Add padding or other widgets as needed
                  child: Center(
                    child: Text(
                      'Workout Page',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              // BottomNavbar positioned at the bottom
              BottomNavbar(),
            ],
          ),
        ],
      ),
    );
  }
}
